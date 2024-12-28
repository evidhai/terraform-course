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