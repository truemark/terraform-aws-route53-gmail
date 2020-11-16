variable "zone_name" {}
variable "name" {
  default = ""
}
variable "ttl" {
  default = 3600
}
variable "spf_value" {
  default = "v=spf1 include:_spf.google.com ~all"
}

variable "spf_ttl" {
  default = 3600
}
