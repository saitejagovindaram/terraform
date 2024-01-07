variable "internetTraffic" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "fromPort" {
  type = number
  default = 0
}

variable "toport" {
  type = number
  default = 0
}

variable "amiID" {
  type = string
  default = "ami-03265a0778a880afb"
}