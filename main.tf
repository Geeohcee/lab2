# This tells Terraform: "run in Terraform Cloud, not locally"
terraform {
  cloud {
    organization = "Larry_sam"  # ← your org name
    workspaces {
      name = "lab2"  # ← your workspace
    }
  }
}

# This tells Terraform: "create resources in AWS, region us-east-1"
provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "main1" {
  cidr_block = "10.0.0.0/16"
}

# This is the actual infrastructure: a VPC (Virtual Private Cloud)
# Think of it as your private network in AWS
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"  # IP address range
}
