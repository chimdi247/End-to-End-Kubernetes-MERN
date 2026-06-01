terraform {
  backend "s3" {
    bucket         = "s3-chimdi"
    region         = "eu-west-2"
    key            = "End-to-End-k8s-mern/Jenkins-Server-TF/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
