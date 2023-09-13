##########SQS Queue Variables#############
variable sqs_delayseconds{
  type = int
  default = 5
}
variable max_message_size {
  type = int
  default = 2048
}
variable message_retention_seconds {
  type = int
  default = 86000
}
variable visibility_timeout_seconds{
  type = int
  default = 200
}
variable receive_wait_time_seconds{
  type = int
  default = 10
}

#####S3 Bucket Variables##########
variable s3_bucket_1_block_public_acl{
  type = bool
  default = true
}
variable s3_bucket_1_block_public_policy{
  type = bool
  default = true
}
variable s3_bucket_1_ignore_public_acls{
  type = bool
  default = true
}
variable s3_bucket_1_restrict_public_buckets{
  type = bool
  default = true
}
variable s3_bucket_1_acl{
  type = string
  default = "private"
}

######Lambda Variables###########
variable lambda_name{
  type = string
  default = "my-test-lambda-function"
}
variable lambda_description{
  type = string
  default = "Lambda function which calls code from S3 and invokes when S3 queue recieves a message"
}
variable lambda_handler{
  type = string
  default = "lambda_function.lambda_handler"
}
variable lambda_memory_size{
  type = int
  default = 128
}
variable lambda_runtime{
  type = string
  default = "python3.9"
}
variable lambda_timeout{
  type = int
  default = 180
}