# ecr-watch

Terraform module to configure an AWS ECR Usage Dashboard based on AWS CloudWatch log insight queries with data fetched from AWS CloudTrail.

The Cloudwatch Dashboard includes the following widgets:
  * Images per Accounts
  * Usage by Accounts
  * ECR Repositories Usage
  * Images and tags per accounts

## Usage
### Module call for ecr-watch

* Clone the repository in your Terraform modules folders:

```bash
cd <path/to/modules>
git clone git@github.com:porscheofficial/ecr-watch.git
```

* Call the module as follows

```hcl
module "ecr-watch" {
    source = "<path/to/modules>/ecr-watch"
    aws_cloudwatch_cloudtrail_log_group = "<cloudtrail/log_group/path>"
    aws_region = <aws-region>
}
```

### To perform security scan: 
Please install https://github.com/aquasecurity/tfsec
```bash
tfsec --format=default
```

## Requirements

| Name      | Version  |
|-----------|----------|
| terraform | ~> 1.4.5 |

## Providers

| Name                                                                | Version   |
|---------------------------------------------------------------------|-----------|
| [aws](https://registry.terraform.io/providers/hashicorp/aws/latest) | 4.63.0    |


## Resources

| Name                                                                                                                                                                             | Type        |
|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------|
| [aws_cloudwatch_dashboard](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/cloudwatch_dashboard)                                                                           | resource    |                                                  | data source |                                                                         | data source |
| [aws_caller_identity](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity)                                                            | data source |


## Inputs

| Name              | Type         | Description                                                              | Default value    |
|-------------------|--------------|--------------------------------------------------------------------------|------------------|
| aws_region        | string       | Specify AWS region for CloudWatch Log Group containing CloudTrail Logs   | eu-central-1     |
| aws_cloudwatch... | string       | Specify the CloudWatch Log Group which contains CloudTrail Logs          | aws/cloudtrail   |
