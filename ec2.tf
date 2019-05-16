module "ec2_test" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "1.21.0"
  name                   = "ec2-test"
  instance_count         = 1
  ami                    = "ami-0b8d0d6ac70e5750c" #amzn2-ami-hvm-2.0.20181114-x86_64-ebs
  instance_type          = "t2.micro"
  key_name               = "test-key"
  monitoring             = false
  vpc_security_group_ids = ["sg-72fa6f08"]
  subnet_id              = "subnet-2a324a4f"
  tags = {
    Name = "ec2-test"
    Terraform = "true"
    Environment = "dev"
  }
}
