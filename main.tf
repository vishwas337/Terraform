variable "ami_value" {
  description = "The AMI ID to use for the server"
  
}
variable "instance_type" {
  description = "The type of instance to launch"

  }
  variable "subnet_id" {
    description = "The subnet ID to launch the instance into"
    
  }
  provider "aws" {
    region = "us-west-2"
    
  }
  resource "instance" "vishwas" {
    ami = var.ami_value
    instance_type = var.instance_type
    subnet_id = var.subnet_id
    
  }