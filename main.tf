provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_name_prefix}-${random_id.id.hex}"
  aws_s3_bucket_acl = "private"
}

resource "random_id" "id" {
  byte_length = 8
}
