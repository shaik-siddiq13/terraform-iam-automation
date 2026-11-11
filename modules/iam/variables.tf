variable "role_name" {
  description = "Name of the IAM role"
  type        = string
}

variable "bucket_name" {
  description = "S3 bucket name for read-only access"
  type        = string
}