variable "AWS_SECRET_ACCESS_KEY" {
    type = string
    default = null
}

variable "AWS_ACCESS_KEY_ID" {
    type = string
    default = null
}

variable "aws_region" {
    description = "Region for AWS EC2 instances"
    default = "ap-southeast-1"
}

variable "username" {
    type = list
    default = ["kamal", "irsyad"]
}