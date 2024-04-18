## Overview
The Cloud Resume Challenge is a multi-phase resume project that aids in developing and showcasing abilities necessary to pursue a profession in cloud computing. This is my effort to complete the AWS cloud resume challenge. I decided to use TheCloudResumeChallenge as a project to expand my portfolio. Forrest Brazeal created the project.

## Technologies Used
- AWS Lambda
- API Gateway
- Github Actions
- Terraform
- Dynamo DB
- S3 Bucket
- HTML/CSS
- CloudFront
- Route 53

## Architecture
- Use Amazon CloudFront, HTTPS, and an S3 static website to deploy your resume.
- Direct your CloudFront Distribution to a unique DNS domain name. I used Route 53 to purchase one.
- Use Javascript to include a visitor counter on your website.
- Configure the visitor counter in a DynamoDB database.
- Develop an API to allow your JavaScript code to interact with DynamoDB.
- Create a Python Lambda function that reads from the DynamoDB table and changes the visitor counter when it is activated by your API Gateway. Additionally, write tests for your Python code.
- Use Terraform to write it everything as Infrastructure as Code.
- To automate changes and deployment, set up two GitHub repositories and utilise GitHub actions.

[View mine](https://devtej.com)