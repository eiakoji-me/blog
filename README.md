# Blog

This site is built with [Hugo](https://gohugo.io/) and the Gokarna theme.

## Set up the repository

Initialize the pinned theme after cloning:

```bash
git submodule update --init --recursive
```

Install Hugo, ripgrep, and ShellCheck before running the local checks.

## Preview locally

Preview published and draft content at <http://localhost:1313>:

```bash
hugo server --buildDrafts --baseURL http://localhost:1313/
```

## Create an article

Create a draft from the repository archetype:

```bash
hugo new content posts/my-article.md
```

Edit `content/posts/my-article.md`, keep `draft: true` while writing, and add
local images below `static/images/posts/`.

## Validate content

Run the repeatable production and draft checks:

```bash
./scripts/validate-content.sh
```

## Build for production

Generate the publishable site in `public/`:

```bash
hugo --cleanDestinationDir
```
