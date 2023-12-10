# DevOps Hiring Assignment: Automating Docker Image Upload to AWS ECR using GitHub Actions

## Prerequisites:
* AWS account with OIDC connect for Github
* IAM permission to perform actions

## 1. GitHub Repository Setup:

* Created a Repo - **DevOps Assessment**</n>
* Including Python app with Docker file

## 2. Docker Image Creation:

* Docker file is successfully build Image

## 3. AWS ECR Setup:

* Created a ECR repository - **devops-assessment**</n>
* Setup the **OIDC Connection** for connecting AWS to Github</n>
* Configured necessary IAM roles and policies for access management.

## 4. GitHub Actions Workflow:

* Created workflow file - **pipeline.yaml**</n> which will trigger on push or pull request event with appropiate caching to optimize workflow runs.
### Explaination:
* When someone make any change to code and push code to GitHub repo the workflow file automatically triggered.</n>
* It start with checking all dependencies install all packages, then enters in Build stage do AWS login, Docker login</n>
* After that it build docker image and push it to AWS ECR.
 
## 5. Security and Best Practices:
* Use Github secret for storing AWS creadentials

##