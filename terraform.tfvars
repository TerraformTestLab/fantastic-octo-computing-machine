# Terraform variable definitions (overrides)
# You can edit these values to customize the deployment for this workspace.

instance_name = "stack-v3-test-dev-instance"
instance_type = "t3.micro"
ami_id        = "ami-0dee22c13ea7a9a67"    # use appropriate AMI ID available in your region
aws_subnet_id = "subnet-04ac8df91e75657c9" # Used for dev-workspace, use your own subnet ID
region        = "ap-south-1"               # Replace with your desired AWS region
