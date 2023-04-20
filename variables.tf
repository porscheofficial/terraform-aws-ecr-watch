variable "aws_region" {
  default     = "eu-central-1"
  description = "Specify the AWS region for the CloudWatch Log Group containing CloudTrail Logs"
  nullable    = false
}

variable "aws_cloudwatch_cloudtrail_log_group" {
  default     = "aws/cloudtrail"
  description = "Specify the cloudwatch log group which contains cloudtrail logs"
  nullable    = false
}