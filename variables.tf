variable "aws_access_key" {
    description = "AWS_ACCESS_KEY_ID"
    #default = "AKIA..."
}

variable "aws_secret_key" {
    description = "AWS_SECRET_ACCESS_KEY"
    #default = ""
}

variable "public_key" {
    description = "Name of the SSH keypair to use in AWS"
    #default = "ssh-rsa ..."
}

variable "access_cidr_blocks" {
    description = "CIDR blocks to access SSH and HTTP"
    default = "0.0.0.0/0"
}

variable "name_prefix" {
    description = "prefix name for tags"
    default = "pixiv-isucon2016"
}

variable "aws_region" {
    description = "AWS region to launch servers"
    default = "ap-northeast-1"
}

#variable "aws_az" {
#    description = "AWS availability zone"
#    default = "a"
#}

variable "amis" {
    description = "The AMI to use for the instance"
    default = {
        "web" = "ami-18b05179"
        "bench" = "ami-53ef0e32"
    }
}

variable "instance_types" {
    description = "The type of instance to start"
    default = {
        "web" = "c4.large"
        "bench" = "c4.xlarge"
    }
}

variable "spot_prices" {
    description = "The price to request on the spot market"
    default = {
        "c4.large" = "0.133"
        "c4.xlarge" = "0.265"
    }
}

variable "vpc_cidr_block" {
    description = "CIDR block for VPC"
    default = "10.0.0.0/16"
}

variable "wait_for_fulfillment" {
    description = "Terraform will wait for the Spot Request to be fulfilled"
    default = true
}
