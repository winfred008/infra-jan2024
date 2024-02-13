terraform {
  backend "s3" {
    bucket = "winfred008-terraform-state"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-2"
    dynamo_table = "terraform-state"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}
