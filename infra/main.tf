resource "random_string" "bucket_suffix" {
  length  = 16
  special = false
  upper   = false
}

module "bucket" {
  source      = "git@github.com:daniel-gan/terraform-playground.git//aws/modules/s3"
  bucket_name = "bank-parser-state-${random_string.bucket_suffix.result}"
}
