#IAM Resource block for Lambda IAM role.
resource "aws_iam_role" "iam_lambda_test" {
  name                 = "lambda_test_iam"
  assume_role_policy   = jsonencode({
    Statement = [{
      Action = "sts:AssumeRole"
      Effect = "Allow"
      Principal = {
        Service = "lambda.amazonaws.com"
      }
    }]
    Version = "2023-09-06"
  })
}

#Attachment of a Managed AWS IAM Policy for Lambda basic execution
resource "aws_iam_role_policy_attachment" "lambda_basic_execution_policy" {
  policy_arn             = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role                   = aws_iam_role.iam_lambda_test.name
}

#Attachment of a Managed AWS IAM Policy for Lambda sqs execution
resource "aws_iam_role_policy_attachment" "lambda_basic_sqs_queue_execution_policy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaSQSQueueExecutionRole"
  role       = aws_iam_role.iam_lambda_test.name
}

#Attachment of a Managed AWS IAM Policy for Lambda S3 read access
resource "aws_iam_role_policy_attachment" "lambda_basic_s3_read_access_policy" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AmazonS3ReadAccess "
  role       = aws_iam_role.iam_lambda_test.name
}