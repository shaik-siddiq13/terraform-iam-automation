variable "role_name" {
  description = "Name of the IAM role"
  type        = string
  default     = "terraform-s3-readonly-role"
}

variable "bucket_name" {
  description = "S3 bucket name for read-only access"
  type        = string
}