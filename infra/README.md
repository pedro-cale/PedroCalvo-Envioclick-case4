# Infrastructure as Code with Terraform

This directory contains the Terraform configuration to deploy the Lambda function.

## Prerequisites

- AWS CLI configured with appropriate permissions
- Terraform installed (version 1.5.0 or later)

## Deployment

1. Navigate to the infra directory:
   ```bash
   cd infra
   ```

2. Initialize Terraform:
   ```bash
   terraform init
   ```

3. Plan the deployment:
   ```bash
   terraform plan
   ```

4. Apply the changes:
   ```bash
   terraform apply
   ```

## Variables

- `region`: AWS region (default: us-east-1)
- `function_name`: Name of the Lambda function (default: interview-lambda)

You can override these by creating a `terraform.tfvars` file or passing them as arguments.

## Outputs

- `lambda_function_arn`: ARN of the deployed Lambda function
- `lambda_function_name`: Name of the deployed Lambda function