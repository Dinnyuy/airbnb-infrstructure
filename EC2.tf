resource "aws_instance" "web" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  monitoring = true 
  ebs_optimized = true
  root_block_device {
    encrypted     = true
 }

 resource "aws_instance" "pass" {
  ami           = "ami-0149b2da6ceec4bb0" # 
  instance_type = "t2.micro"
  iam_instance_profile = "test"

  network_interface {
    network_interface_id = aws_network_interface.foo.id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}

  tags = {
    Name = "air-bnb-web-server-instance"
  }
}
