provider "aws" {
  region = "ap-northeast-2"
}


resource "aws_key_pair" "pch_key" {
  key_name        ="pch-key"
  public_key      = file("../../../.ssh/id_rsa.pub")
}


resource "aws_vpc" "pch_vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames = true
  tags = {
      Name   =  "pch-vpc"  
  }
  
}
