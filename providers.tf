terraform {
  backend "s3" {
    bucket = "winfred008-terraform-state"
    key    = "global/s3/terraform.tfstate"
    region = "us_east_2"
    dynamo_table = "terraform-state"
    encrypt = true
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us_east_2"
}
