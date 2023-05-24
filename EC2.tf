resource "aws_instance" "web" {
  ami           = var.AMI_ID
  instance_type = var.INSTANCE_TYPE
  iam_instance_profile = "JenkinsCICDrole"
  monitoring = true 
  ebs_optimized = true
  root_block_device {
    encrypted     = true
 }
  tags = {
    
    Name = "air-bnb-web-server-instance"
  }
}
