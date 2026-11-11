output "role_arn" {
  description = "ARN of the IAM role"
  value       = aws_iam_role.this.arn
}

output "policy_arn" {
  description = "ARN of the IAM policy"
  value       = aws_iam_policy.s3_readonly.arn
}
