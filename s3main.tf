resource "aws_s3_bucket" "example_buckets" {
  bucket        = var.shreyasvv
  acl           = "private"
  force_destroy = true
}
