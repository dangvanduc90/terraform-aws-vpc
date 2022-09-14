provider "aws" {
  region     = "us-east-2"
  access_key = "AKIA3F4IKHZN7FGIJJEQ"
  secret_key = "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"
}

module "vpc" {
  source = "./vpc"

  vpc_cidr_block = "10.0.0.0/16"

  private_subnet    = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
  public_subnet     = ["10.0.4.0/24", "10.0.5.0/24", "10.0.5.0/24"]
  availability_zone = ["us-east-2a", "us-east-2b", "us-east-2c"]
}
