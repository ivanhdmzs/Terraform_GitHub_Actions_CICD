provider "aws" {
  region = "eu-west-1"
}


terraform {
  backend "s3" {
    bucket         = "table1234567"
    key            = "globalstate/s3/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "jaya-1234567"
    encrypt        = true
  }
}
