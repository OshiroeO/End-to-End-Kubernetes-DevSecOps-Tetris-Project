terraform {
  backend "s3" {
    bucket         = "ing-bucket-fordevsecops"
    region         = "ap-northeast-2"
    key            = "End-to-End-Kubernetes-DevSecOps-Tetris-Project/EKS-TF/terraform.tfstate"
    dynamodb_table = "Ing-tables-fordevops"
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