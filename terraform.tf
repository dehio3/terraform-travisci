terraform {
  backend "s3" {
    bucket = "terraform-travisci.dehio3.com"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
provider "aws" {
  region = "ap-northeast-1"
}
