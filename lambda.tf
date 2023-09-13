#Call IAM resource as data reference 
data "aws_iam_role" "lambda_test_role" {
  name = "lambda_test_iam"
}

#Call SQS resource as data reference
data "aws_sqs_queue" "lambda_sqs_queue" {
    name = "sqs-test"
}

#Lambda Function Resource
resource "aws_lambda_function" "lambda_test" {
  function_name    = var.lambda_name
  role             = data.aws_iam_role.lambda_test_role.arn
  description      = var.lambda_description
  handler          = var.lambda_handler
  memory_size      = var.lambda_memory_size
  s3_bucket        = "my-test-bucket-lambda-sqs-aaron"
  s3_key           = "lambda.zip"
  runtime          = var.lambda_runtime
  timeout          = var.lambda_timeout 
  depends_on       = [ aws_iam_role.iam_lambda_test ]
}

#Lambda SQS Trigger
resource "aws_lambda_event_source_mapping" "lambda_test_sqs_trigger" {
  event_source_arn = data.aws_sqs_queue.lambda_sqs_queue.arn
  function_name    = aws_lambda_function.lambda_test.arn
  depends_on       = [aws_sqs_queue.test-sqs]

}