# Blog Project

This project is built using [Hugo](https://gohugo.io/), a fast and flexible static site generator.

## Init submodule and update theme

Run the following command to download the gokarna theme

    git submodule init
    git submodule update

Explanation:
1. git submodule init: Initializes the submodule configuration.
2. git submodule update: Clones the submodule into the themes directory.

If the theme was not added as a submodule, you can add it manually:

    git submodule add https://github.com/ThemeRepo gokarna.git themes/gokarna

Replace https://github.com/ThemeRepo/gokarna.git with the actual repository URL of your theme. After adding, run:

    git submodule update --init --recursive

This will ensure the theme is properly downloaded into the themes folder.

## Running the Project in Development Mode

To run the project locally in development mode:

1. Ensure you have Hugo installed. If not, install it by following the [Hugo installation guide](https://gohugo.io/getting-started/installing/).
2. Run the following command to start the development server:

   ```bash
   hugo server -D --config config.dev.toml
   ````

- -D: Includes draft content in the build.
- --config config.dev.toml: Specifies the development configuration file.

3. Open your browser and navigate to http://localhost:1313 to view the site.

## Building the Project for Production
To build the project for production:

1. Run the following command:

        hugo --config config.toml

- This will generate the production-ready static files in the public directory.

2. Deploy the contents of the public directory to your hosting provider (e.g., Netlify, Vercel, or any static hosting service).

## Adding a new page

To add a new page to your site:

1. Run the following command to create a new page:

Replace <section> with the desired section (e.g., about) and <page-name> with the name of the new page.

2. Open the newly created file in the content/<section>/<page-name>.md directory and edit its content. For example:

       ---
       title: "New page"
       draft: false
       ---

3. Save the file and run the development server to preview the new page:
4. Access the page at http://localhost:1313/<section>/<page-name>/.

## Configuration Files

- config.toml: The default configuration file for production.
- config.dev.toml: The configuration file for development mode.

## Additional Notes

- If you encounter issues with 404 errors or missing pages, ensure your content files are correctly structured and that the appropriate configuration file is being used.
- For more information on Hugo commands and configuration, refer to the Hugo Documentation.