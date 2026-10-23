---
title: Run Springboot application with Elastic Beanstalk, SSH and EC2
description: Advanced diagnostics and troubleshooting steps for Spring Boot applications deployed with Elastic Beanstalk on EC2 environments
tags: ["aws", "elastic-beanstalk", "spring-boot", "java", "ec2"]
image: /images/posts/elasticbeanstalk.png
type: post
date: 2024-03-17T15:27:00+00:00
aliases:
  - /posts/springboot_ebcli/
---

![Spring Boot on AWS Elastic Beanstalk](/images/posts/elasticbeanstalk.png)

Recently, I worked on a PoC to create an automated build pipeline for a Spring Boot REST API in Elastic Beanstalk. Based on prior knowledge related to the use of Amazon EBS, this was expected to be a trivial task. Turns out that without a solid knowledge of setting up and managing configurations for AWS resources, doing this can be challenging.

There are a host of pages and videos explaining how to deploy Spring/Spring Boot applications to Elastic Beanstalk. However, I was not lucky enough to find one explaining details of the underlying computing resource for this configuration.

For this post, I am focusing on the configuration required to deploy a Java application on Elastic Beanstalk, using the EB CLI. This can also be done with AWS CLI, though EB CLI is tailored to meet our needs.


### Infrastructure Diagram

To run java applications with EBS, we can use several configurations. Deploying an application that runs on scalable EC2 instances is common, hence is used in this guide. 


![illustration of AWS EBS with EC2 environments](https://dev-to-uploads.s3.amazonaws.com/uploads/articles/g5ly6ehe2c6fsxdd8iph.png)


### Requirements

1. You'll obviously need to have an AWS account with the required access level to AWS console.

2. If you have not done so, [install AWSCLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html) and [configure your credentials](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-configure.html).

You can create named profiles with your aws credentials and configuration [using this guide](https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-files.html). 

3. Install [EBS CLI](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb-cli3-install.html)

4. Follow [this tutorial](https://www.baeldung.com/spring-boot-deploy-aws-beanstalk) to create and deploy a simple springboot application with AWS Elastic Beanstalk. Remember to select "create a new SSH public, private key pair" when prompted to.

### Implementation Notes

I noticed that the `eb create` command fails when the following line is added:

```
deploy:
  artifact: target/spring-boot-bootstrap-eb.jar
```
 If you get the following error message: _ERROR: NotFoundError - Application Version does not exist locally (target/spring-boot-bootstrap-eb.jar). Try uploading the Application Version again._

Remove the deploy artifact configuration and use the following command to create your environment:

```
$ eb create --source target/spring-boot-bootstrap-eb.jar --version spring-boot-bootstrap-eb
```

Similarly run the following command to deploy
```
$ eb deploy --version spring-boot-bootstrap-eb
```

You can review the [CLI documentation](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/eb3-cmd-commands.html) or use `eb command_name --help` to view usage of different commands.

### SSH to your EC2 Instance

Now you're all set to go!

```
$ eb ssh
$ cd /var/app/current
$ java -jar application.jar
```

You can run regular commands as you'd do in a local environment. This can be useful for troubleshooting application instances.