# 1. Fortell Terraform at vi skal bruke AWS
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# 2. Definer hvilken region i verden vi skal bygge i
provider "aws" {
  region = "eu-north-1" # Stockholm (Nærmest Norge)
}

# 3. Definer en virtuell server (EC2 instans)
resource "aws_instance" "min_skyserver" {
  ami           = "ami-089146c5626baa6bf" # ID for en helt standard Ubuntu Linux-installasjon i Stockholm
  instance_type = "t3.micro"               # En veldig liten og billig serverstørrelse (Free Tier-vennlig)

  tags = {
    Name = "MinForsteTerraformServer"
  }
}
