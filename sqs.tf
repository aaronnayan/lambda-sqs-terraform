#SQS Resource block for SQS Queue.
resource "aws_sqs_queue" "test-sqs" {
  name                       = "sqs-test"
  delay_seconds              = var.sqs_delayseconds 
  max_message_size           = var.max_message_size 
  message_retention_seconds  = var.message_retention_seconds 
  visibility_timeout_seconds = var.visibility_timeout_seconds 
  receive_wait_time_seconds  = var.receive_wait_time_seconds
}