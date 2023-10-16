
variable "project" {
  # Change this with your Project name
  default     =  "project-name"
  type        = string
}

variable "region" {
  default     =  "ap-south-1"
  type        = string
}

data "aws_availability_zones" "example" {
   state = "available"
}
output "availability_zones" {
  value = data.aws_availability_zones.example.names
}
variable "availability_zones" {
  default     =[
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c",
]
  type        = list  
  description = "List of availability zones"
}
variable "vpc_cidr" {
  # CIDR for your new VPC , 10.0.0.0/16 means you can not change first 10.0 (16 bits) when creating subnetwork(subnet, private or piblci)
  default     = "10.0.0.0/16"
  type        = string
}

variable "public_subnet_cidr_blocks" {
  # Change this if change vpc_cidr

  default     = ["10.0.0.0/24", "10.0.2.0/24",  "10.0.3.0/24",]
  type        = list
  description = "List of public subnet CIDR blocks"
}
variable "private_subnet_cidr_blocks" {

  # Change this if change vpc_cidr
  default     = ["10.0.100.0/24", "10.0.101.0/24" , "10.0.102.0/24" ]
  type        = list
  description = "List of private subnet CIDR blocks"
}



 
variable "access_key" {
  description = "AWS Access Key ID"
  type        = string
}
variable "secret_key" {
  
description = "AWS Secret Access Key"
  type        = string
}
 