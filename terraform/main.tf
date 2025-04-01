provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "new_server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Ubuntu AMI
  instance_type = "t2.micro"

  user_data = file("terraform/userdata.sh")

  tags = {
    Name = "NewServer"
  }
}
