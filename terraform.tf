provider "aws"{
    region="ap-south-1a"

}

resource "aws_instance" "server" {
  ami           = "ami-06984ea821ac0a879"
  instance_type = "t2.micro"
  subnet_id="subnet-08ed7a1243a462b83"
  security_groups=["sg-04d6713736d548093"]
  


  tags = {
    Name = "terraform-server"
  }
}
