#Create Bucket 1
resource "aws_s3_bucket" "s3-bucket-1" {
  bucket = "my-test-bucket-lambda-sqs-aaron"
}

#Block Public Access Bucket 1
resource "aws_s3_bucket_public_access_block" "s3-bucket-1-block" {
  bucket = aws_s3_bucket.s3-bucket-1.id
  block_public_acls       = var.s3_bucket_1_block_public_acl
  block_public_policy     = var.s3_bucket_1_block_public_policy
  ignore_public_acls      = var.s3_bucket_1_ignore_public_acls
  restrict_public_buckets = var.s3_bucket_1_restrict_public_buckets
}

#Create Bucket ACL Bucket 1
resource "aws_s3_bucket_acl" "s3-bucket-1-acl" {
  bucket = aws_s3_bucket.s3-bucket-1.id
  acl    = var.s3_bucket_1_acl
}