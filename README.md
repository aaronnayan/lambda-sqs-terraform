# lambda-sqs-terraform
Triggering your Lambda function by SQS in Terraform


### Written and created by Aaron Dhobi ###

Lambda functions doing your head in? Need a quick lambda template to use for your terraform quickly and efficiently? Try this one…

This simple solution architecture will invoke a lambda function when a message arrives in our SQS queue. The lambda function will load code from a S3 bucket and will print a message.


# Lambda 101
Lambda functions are a serverless service in AWS where you can run code without provisioning or managing servers. You can trigger Lambda from over 200 AWS services and software as a service (SaaS) applications, and only pay for what you use.

# SQS 101
Amazon Simple Queue Service (Amazon SQS) lets you send, store, and receive messages between software components at any volume, without losing messages or requiring other services to be available. The service enables you to integrate and decouple microservices with throttling.

# Objectives
From this, you will be able to:

Create a Lambda IAM role.
Deploy a Lambda function using Terraform.
Create a SNS topic and set this as a trigger for your lambda function.
Create a S3 bucket to store all lambda function code.

# Pre-requisites
This blog assumes you have basic knowledge of AWS and Terraform. You have Terraform set up and ready to go.

Basic knowledge of Terraform and AWS
Terraform has been configured correctly with the provider and region.
AWS Free-Tier Account
Preferred IDE with the Terraform plugin installed and the AWS CLI