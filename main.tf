module "iam" {
  source = "./modules/iam"

  role_name   = var.role_name
  bucket_name = var.bucket_name
}