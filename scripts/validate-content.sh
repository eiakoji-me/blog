#!/usr/bin/env bash

set -euo pipefail

repo_root=$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)
temp_root=$(mktemp -d)
trap 'rm -rf -- "$temp_root"' EXIT

cd "$repo_root"

failures=0

report_failure() {
  printf 'ERROR: %s\n' "$*" >&2
  failures=$((failures + 1))
}

is_draft() {
  local file=$1
  awk '
    NR == 1 && ($0 == "---" || $0 == "+++") { delimiter = $0; next }
    delimiter != "" && $0 == delimiter { exit }
    delimiter != "" && /^[[:space:]]*draft[[:space:]]*[:=][[:space:]]*true([[:space:]]|$)/ { found = 1 }
    END { exit(found ? 0 : 1) }
  ' "$file"
}

has_body() {
  local file=$1
  awk '
    NR == 1 && ($0 == "---" || $0 == "+++") { delimiter = $0; next }
    in_body && /[^[:space:]]/ { found = 1; exit }
    delimiter != "" && $0 == delimiter { in_body = 1 }
    END { exit(found ? 0 : 1) }
  ' "$file"
}

while IFS= read -r -d '' file; do
  first_line=$(head -n 1 "$file")
  if [[ $first_line != '---' && $first_line != '+++' ]]; then
    report_failure "$file does not begin with intentional front matter"
    continue
  fi

  if ! is_draft "$file" && ! has_body "$file"; then
    report_failure "$file is published but has no body content"
  fi
done < <(find content -type f -name '*.md' -print0)

if rg -ni 'kotlin|multiplatform|\bkmp\b' content; then
  report_failure 'removed technology references remain under content/'
fi

image_refs="$temp_root/image-refs.txt"
{
  rg -No --glob '*.md' '!\[[^]]*\]\((/[^ )]+)' content \
    | sed -E 's/.*\]\((\/[^ )]+).*/\1/'
  rg -No --glob '*.md' "^[[:space:]]*image:[[:space:]]*['\"]?(/[^'\"[:space:]]+)" content \
    | sed -E "s/.*image:[[:space:]]*['\"]?(\/[^'\"[:space:]]+).*/\1/"
} | sort -u > "$image_refs"

while IFS= read -r image_ref; do
  [[ -z $image_ref ]] && continue
  if [[ ! -f "static$image_ref" ]]; then
    report_failure "missing local image: $image_ref"
  fi
done < "$image_refs"

if ((failures > 0)); then
  printf 'Content validation found %d error(s).\n' "$failures" >&2
  exit 1
fi

hugo --cleanDestinationDir --destination "$temp_root/production"
hugo --buildDrafts --cleanDestinationDir --destination "$temp_root/drafts"

printf 'Content validation passed.\n'
