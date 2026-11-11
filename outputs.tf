output "iam_role_arn" {
  description = "ARN of the created IAM role"
  value       = module.iam.role_arn
}

output "iam_policy_arn" {
  description = "ARN of the created IAM policy"
  value       = module.iam.policy_arn
}