resource "aws_cloudwatch_dashboard" "main" {
  dashboard_name = "ecr-usage"
  dashboard_body = templatefile("${path.module}/ecr_dashboard.json", {
    aws_cloudwatch_cloudtrail_log_group = var.aws_cloudwatch_cloudtrail_log_group
    account_id = data.aws_caller_identity.current.account_id
    aws_region = var.aws_region
  })
}