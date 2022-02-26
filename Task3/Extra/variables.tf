variable "CentosAMI" {
    description = "Enter AMI to CentOS server"
    type = string
    default = "ami-08b6d44b4f6f7b279"
}

variable "PrivateIpUbuntu" {
    description = "Enter Private IP to Ubuntu server"
    default = "10.0.10.10"
}

variable "UbuntuAMI" {
    description = "Enter AMI to Ubuntu server"
    type = string
    default = "ami-0d527b8c289b4af7f"
}

variable "cidr" {
    description = "Enter CIDR block 0.0.0.0/0 to install nginx on CentOS server, or 10.0.10.10/32 if not install"
}