resource "aws_s3_bucket" "default" {
  count = var.enabled ? 1 : 0
  bucket = var.bucket_name
  acl = var.acl
  region = var.region
  force_destroy = var.force_destroy
  policy = var.policy

  versioning {
    enabled = var.versioning_enabled
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm     = var.sse_algorithm
        kms_master_key_id = var.kms_master_key_arn
      }
    }
  }
}
