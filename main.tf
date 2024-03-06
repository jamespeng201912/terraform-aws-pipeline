#  Configure the terraform backend to store the terraform state
terraform {
  backend "s3" {
    bucket = "platform-engineering-terraform-states"
    key    = "terraform/all-state/data-streaming-platform.tfstate"
    region = "ap-northeast-1"
    encrypt = true
  }
}

provider "aws" {
  region  = "ap-northeast-1"
}

resource "aws_instance" "helloworld" {
  ami           = "ami-0477d3aed9e98876c"
  instance_type = "t2.micro"
  key_name= "aws-key-tokyo-james"
  tags = {
    Name = "James-first-ec2"
  }
}
