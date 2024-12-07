output "s3-query" {
  value = data.aws_s3_bucket.course
  description = "querying datablock"
}

output "new-s3" {
  value = resource.aws_s3_bucket.example
  description = "new s3 bucket details"
}