module "ec2_test" {
  source                 = "terraform-aws-modules/ec2-instance/aws"
  version                = "~> v2.0"
  name                   = "ec2-gitlab"
  instance_count         = 1
  ami                    = "ami-0ebe863c3d16bca9d" #amzn2-ami-hvm-2.0.20190618-x86_64-ebs
  instance_type          = "t2.micro"
  key_name               = "test-key"
  monitoring             = false
  vpc_security_group_ids = ["sg-b79875d3"]
  subnet_id              = "subnet-29f3b85e"
  tags = {
    Terraform = "true"
    Environment = "dev"
  }
}

