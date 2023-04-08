variable "region" {
  type        = string
  default     = "us-east-1"
  description = "region to create resource"

}

variable "main-vpc-range" {
  type        = string
  default     = "10.0.0.0/16"
  description = "vpc cidr range"

}

variable "main-app1-cidr" {
  type    = string
  default = "10.0.0.0/24"

}

variable "main-db1-cidr" {
  type    = string
  default = "10.0.1.0/24"

}

variable "main-app2-cidr" {
  type    = string
  default = "10.0.2.0/24"

}

variable "main-db2-cidr" {
  type    = string
  default = "10.0.3.0/24"

}