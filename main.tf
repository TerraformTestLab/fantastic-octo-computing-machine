

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 6.0"

  name = var.instance_name

  instance_type          = var.instance_type
  ami                    = var.ami_id
  monitoring             = true
  vpc_security_group_ids = []                         # Open to world or specific SG if needed, keeping empty for basic example
  subnet_id              = "subnet-04ac8df91e75657c9" # Optional: specify if needed, otherwise default VPC is often used or it might fail if no default VPC. For a generic module usage, we might need to look up a subnet or VPC.

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
