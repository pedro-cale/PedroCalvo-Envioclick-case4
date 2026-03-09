variable "region" {
    description = "AWS region"
    type        = string
    default     = "us-west-2"
}

variable "function_name" {
    description = "Name of the Lambda function"
    type        = string
    default     = "case4-lambda"
}

variable "aws_account" {
    type = string
}

variable "environment" {
    type = string
}