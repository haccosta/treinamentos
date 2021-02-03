variable "amis" {
  type        = map
  default     = {
    "us-east-1" : "ami-096fda3c22c1c990a"
  }
}

variable "instance_name" {
  type        = string
  default     = "t2.micro"
}

variable "cdirs_acesso_remoto"{
  type = "list"
  default = <lista_ips>
}

variable "key_name" {
  default = "terraform-aws"

}

