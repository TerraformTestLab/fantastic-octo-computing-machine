variable "instance_name" {
  description = "Name to be used on all resources as prefix"
  type        = string
  default     = "example-instance"
}

variable "instance_type" {
  description = "The type of instance to start"
  type        = string
  default     = "t3.micro"
}

variable "ami_id" {
  description = "ID of AMI to use for the instance"
  type        = string
  default     = "ami-0dee22c13ea7a9a67" # Amazon Linux 2023 AMI in ap-south-1 (verify this if needed, but using a placeholder/common one is usually okay for templates)
}

variable "aws_subnet_id" {
  description = "The VPC Subnet ID to launch the instance in"
  type        = string
  sensitive   = true
  default     = "" # Leave empty for default VPC, or specify a subnet ID if needed
}

variable "region" {
  description = "The AWS region to deploy resources in"
  type        = string
  default     = "" # Replace with your desired AWS region
}
