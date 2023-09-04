terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    template = {
      source = "hashicorp/template"
      version = "2.2.0"
    }
  }

  required_version = ">= 1.5"
}

provider "aws" {
  region = "ap-southeast-2"
}