variable "external_ip" {
  type    = string
  default = "0.0.0.0/0"
}

variable "instance-type" {
  type    = string
  default = "t3.micro"
}

variable "dns-name" {
  type    = string
  default = "<public-hosted-zone-ending-with-dot>" # e.g "vekid.info."
}

variable "profile" {
  type    = string
  default = "default"
}

#Region of Jenkins master
variable "region-master" {
  type    = string
  default = "us-east-1"

}
# Region on worker nodes
variable "region-worker" {
  type    = string
  default = "us-west-2"
}

#How many Jenkins workers are needed
variable "workers-count" {
  type    = number
  default = 1
}
