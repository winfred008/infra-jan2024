terraform {
  backend "s3" {
    bucket = "winfred008"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-2"
    dynamo_table = "winfred008"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}
