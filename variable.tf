variable "ami_id" {
  description = "This is my instance ami_id"
  type = string
  default = "ami-04a0530fbdaac2fd6"
}

variable "instance_type" {
    description = "instance type defined"
    type = string
    default = "t3.micro"
}

variable "key_name" {
    description = "key name defined"
    type = string
    default = "testing3"
}