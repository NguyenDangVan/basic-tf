terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.30.0"
    }
  }

  backend "s3" {
    bucket = "sandbox-terraform-state-fjc"
    key    = "terraform.tfstate"
    region = "ap-northeast-1"
  }
}
