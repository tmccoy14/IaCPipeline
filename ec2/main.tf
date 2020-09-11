provider "aws" {
  region = var.region
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_type

  tags = {
    POC         = "tucker.m.mccoy@accenturefederal.com"
    Environment = "test"
    Purpose     = "IaC Pipeline Testing"
  }
}
