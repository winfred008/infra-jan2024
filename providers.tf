terraform {
  backend "s3" {
    bucket = "winfred008"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "terraform-state"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}
