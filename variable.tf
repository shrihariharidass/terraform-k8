variable "region" {
  type    = string
  default = "us-east-1a"
}

variable "ami" {
  type    = string
  default = "ami-0c7217cdde317cfec"
}

variable "instance_type" {
  type    = string
  default = "t2.medium"
}

# existing key pair name
variable "existing_key_pair_name" {
  type    = string
  default = "BMI"
}

# Default and desired VPC IDs
variable "default_vpc_id" {
  type    = string
  default = "vpc-0f163aeb33940bbe4"
}

variable "desired_vpc_id" {
  type    = string
  default = " " # replace with your desired VPC ID if differenr
}

variable "cidr_block" {
  type    = string
  default = "172.31.0.0/16"
}

# number of instance to lunch
variable "num_instance" {
  type    = number
  default = 3
}

# variable "existing_security_group_id" {
#   type = string
#   description = "ID of the existing security group to use"
# }

variable "existing_vpc_id" {
  type        = string
  description = "vpc-0f163aeb33940bbe4"
}