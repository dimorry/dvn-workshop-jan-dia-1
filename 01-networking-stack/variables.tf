variable "default_tags" {
  type = object({
    Project     = string
    Environment = string
  })

  default = {
    Project     = "dvn-workshop-jan"
    Environment = "production"
  }
}

variable "assume_role" {
  type = object({
    arn    = string
    region = string
  })

  default = {
    arn    = "arn:aws:iam::654654554686:role/dvn-workshop-jan-role"
    region = "us-east-1"
  }
}

variable "vpc" {
  type = object({
    name       = string
    cidr_block = string
  })

  default = {
    name       = "workshop-dvn-jan-vpc-2"
    cidr_block = "10.0.0.0/24"
  }
}