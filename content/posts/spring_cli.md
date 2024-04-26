---
title: Use CLI to generate your spring starter projects
description: Rather than go throught the process of generating spring starter projects through spring.io, we can use spring CLI to generate projects templates
tags: [Springboot, SpringCLI, Java]
image: "/images/posts/spring-boot.png"
type: post
date: 2024-04-17T03:27:00+00:00
---

![Spring.io CLI](/images/posts/spring-boot.png "Spring CLI")

In the world of Spring Boot development, starting a new project with spring.io, manually downloading and extracting the starter-template can be cumbersome. Fortunately, Spring CLI (Command Line Interface) provides a convenient solution to streamline this process. In this article, we'll explore how to leverage Spring CLI to generate a Spring Boot project template quickly and efficiently.

Spring CLI allows you to quickly bootstrap and develop Spring-based applications using Groovy scripts. Here's a step-by-step guide to create a new project:

**Step 1: Install Spring CLI**

If you haven't installed Spring CLI yet, you can download it from the official Spring website or use SDKMAN! (The Software Development Kit Manager). Here's how to install it using SDKMAN!:

   ```bash
   sdk install springboot
   ```

This command installs the Spring Boot CLI along with the Spring CLI.

**Step 2: Create a New Project**
Once you have Spring CLI installed, you can create a new project using the `spring init` command followed by the project name and the dependencies you want to include. For example:

   ```bash
   spring init --dependencies=web,data-jpa my-spring-project
   ```

This command creates a new Spring Boot project named `my-spring-project` with web and data JPA dependencies. You can obtain detailed information on the different options available to use with the spring init command viz:

**Step 3: Customize Project Settings:**
You can customize your project settings by specifying additional options in the `spring init` command. For instance, you can specify the project's language, build system, and packaging format. Here's an example:

   ```bash
   spring init --java-version=21 \
   --build=gradle \
   --packaging=jar \
   --type=gradle-project \
   --artifact-id=demo \
   --group-id=com.example \
   --dependencies=actuator,data-jdbc,postgresql,web \
   --extract \
   my-spring-app
   ```

This command creates a new Spring Boot project with Java 21, Gradle as the build system, JAR packaging with actuator, data-jdbc, postgresql, web as dependencies. To view more customizable options, do:

   ```bash
   sdk --help init
   ```

| Command                                | Description                                                 |
|----------------------------------------|-------------------------------------------------------------|
| --dependencies, -d <dependencies>      | Comma-separated list of dependencies to include             |
| --version, -v <version>                | Version of Spring Boot to use (e.g., 2.6.0, 2.5.4.RELEASE)  |
| --build, -b <build-tool>               | Build tool to use (maven or gradle)                         |
| --java, -j <java-version>              | Java version (e.g., 1.8, 11, 17)                            |
| --language, -l <language>              | Language for the project (java, groovy, kotlin)             |
| --package-name, -p <package-name>      | Base package name for the project                           |
| --groupId, -g <groupId>                | Group ID for the project                                    |
| --artifactId, -a <artifactId>          | Artifact ID for the project                                 |
| --boot-version <version>               | Version of Spring Boot to use                               |
| --force, -f                            | Overwrite any existing files                                |
| --extract, -x <archive>                | Extracts the given archive to the project directory         |
| --list, -ls                            | List all available Spring Boot versions                     |
| --list-modules, -lm <module>           | List the modules for a given version                        |
| --list-templates, -lt                  | List all available project templates                        |
| --no-overwrite                         | Skips writing files if they already exist                   |
| --packaging, -P <packaging>            | Packaging to use for the project (e.g., jar, war)           |
| --name, -n <name>                      | Project name                                                |
| --description, -d <description>        | Project description                                         |
| --force, -f                            | Overwrite existing files without prompting                  |
| --format, -of <output-format>          | Format the output using the given format (e.g., json, yaml) |
| --list, -ls                            | List all available versions                                 |
| --list-boot, -lb <spring-boot-version> | List all available Spring Boot versions                     |
| --list-all                             | List all available Spring Boot versions                     |
| --list-templates, -lt                  | List all available project templates                        |
| --yes, -y                              | Always use the default value for prompts                    |
| --no-color, -nc                        | Disable color output                                        |
| --quiet, -q                            | Quiet output mode (no progress bar)                         |
| --stacktrace, -st                      | Print stack trace on application failure                    |
| --version, -v                          | Print the version number                                    |
| --help, -h                             | Print this help message                                     |

This table summarizes the options available for the `spring init` command, along with their descriptions. You can use these options to customize the generation of your Spring Boot project according to your requirements. Here are some examples:

    To list all the capabilities of the service:
        $ spring init --list

    To creates a default project:
        $ spring init

    To create a web my-app.zip:
        $ spring init -d=web my-app.zip

    To create a web/data-jpa gradle project unpacked:
        $ spring init -d=web,jpa --build=gradle my-dir


**Available Spring Initializr Dependencies/Templates**

**Dependencies:**

- `actuator`: Actuator: Production-ready features to help you monitor and manage your application
- `batch`: Batch: Support for Spring Batch including HSQLDB database
- `data-cassandra`: Spring Data Cassandra: Apache Cassandra database support
- `data-jdbc`: Spring Data JDBC: Simplified database access via JDBC
- `data-jpa`: Spring Data JPA: Simplified database access via JPA
- `data-ldap`: Spring Data LDAP: Simplified LDAP access
- `data-mongodb`: Spring Data MongoDB: MongoDB database support
- `data-rest`: Spring Data REST: Expose Spring Data repositories over REST via Spring Data REST
- `data-solr`: Spring Data Solr: Apache Solr search platform support
- `jersey`: Jersey: RESTful Web Services with JAX-RS and Jersey
- `jms`: JMS: Java Messaging Service
- `jmx`: JMX: Java Management Extensions
- `mail`: Mail: Sending email using Spring Framework's email abstraction
- `mobile`: Mobile: Support for mobile web applications with jQuery Mobile
- `mqtt`: MQTT: MQTT support
- `security`: Security: Authentication and Authorization with Spring Security
- `thymeleaf`: Thymeleaf: Thymeleaf engine
- `web`: Web: Full-stack web development with Tomcat and Spring MVC
- `websocket`: WebSocket: WebSocket support

**Templates:**

- `activiti`: Activiti: Business Process Modeling
- `batch`: Batch Service
- `cloud-config-client`: Config Client: Distributed Versioned Configuration
- `cloud-config-server`: Config Server: Centralized External Configuration Management
- `cloud-eureka`: Eureka Discovery: Service Registration and Discovery
- `cloud-gateway`: Gateway: API Gateway
- `cloud-hystrix`: Hystrix: Circuit Breaker
- `cloud-zuul`: Zuul: API Gateway
- `kafka`: Apache Kafka: Kafka Support
- `kotlin`: Kotlin: Kotlin Programming Language Support
- `mongodb`: MongoDB: MongoDB Support
- `restdocs`: Spring REST Docs: Documentation generation for RESTful services
- `security-oauth2`: OAuth2: OAuth 2.0 Support
- `webflux`: WebFlux: Reactive Web Support

**Project types (* denotes the default)**

| Id                    | Description                                                   | Tags                                       |
|-----------------------|---------------------------------------------------------------|--------------------------------------------|
| gradle-build          | Generate a Gradle build file.                                 | build:gradle,format:build                  |
| gradle-project *      | Generate a Gradle based project archive using the Groovy DSL. | build:gradle,dialect:groovy,format:project |
| gradle-project-kotlin | Generate a Gradle based project archive using the Kotlin DSL. | build:gradle,dialect:kotlin,format:project |
| maven-build           | Generate a Maven pom.xml.                                     | build:maven,format:build                   |
| maven-project         | Generate a Maven based project archive.                       | build:maven,format:project                 |

**Parameters**

| Id          | Description                              | Default value                |
|-------------|------------------------------------------|------------------------------|
| artifactId  | project coordinates (infer archive name) | demo                         |
| bootVersion | spring boot version                      | 3.2.4                        |
| description | project description                      | Demo project for Spring Boot |
| groupId     | project coordinates                      | com.example                  |
| javaVersion | language level                           | 17                           |
| language    | programming language                     | java                         |
| name        | project name (infer application name)    | demo                         |
| packageName | root package                             | com.example.demo             |
| packaging   | project packaging                        | jar                          |
| type        | project type                             | gradle-project               |
| version     | project version                          | 0.0.1-SNAPSHOT               |



**Step 4: Navigate to the Project Directory**
Once the project is created, navigate to the project directory:

   ```bash
   cd my-spring-project
   ```

**Step 5: Open the Project in Your Preferred IDE:**
Open the project in your favorite Integrated Development Environment (IDE) such as IntelliJ IDEA, Eclipse, or Visual Studio Code.

**Step 6: Start Developing:**
You can now start developing your Spring application. The project structure is set up with a basic application class and directory structure, allowing you to add your own controllers, services, repositories, etc.

**Step 7: Run Your Application:**
To run your Spring Boot application, use the following command:

   ```bash
   ./mvnw spring-boot:run
   ```

   If you're using Gradle, you can run your application with:

   ```bash
   ./gradlew bootRun
   ```

Your Spring Boot application will start, and you can access it at `http://localhost:8080`.

That's it! You've successfully created a new Spring Boot project using Spring CLI and can now start building your application.

