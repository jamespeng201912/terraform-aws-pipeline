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
