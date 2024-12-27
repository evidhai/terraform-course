variable "s3_test" {
  description = "test"
  # default = "s3-demo"
  type = string

  validation {
    condition     = length(var.s3_test) > 4 && substr(var.s3_test, 0, 4) == "evid"
    error_message = "The s3 bucket should prefix evid."
  }
  sensitive = true

}


variable "egress" {

  type = list(object({
    from_port       = number
    to_port         = number
    protocol        = string
    prefix_list_ids = list(string)
  }))

  default = [{
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    prefix_list_ids = ["pl-12c4e678"]
    }, {
    from_port       = 80
    to_port         = 80
    protocol        = "-2"
    prefix_list_ids = ["pl-12c4e679"]
  }]

}