variable "aws_region" {
  type    = "string"
  default = "ap-northeast-1"
}

variable "default_profile" {
  type    = "string"
  default = "secret"
}

variable "admin_policy_arns" {
  default = {
    default.policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
  }
}

variable "developer_policy_arns" {
  type = "map"

  default = {
    production.policy_arn = "arn:aws:iam::aws:policy/CloudWatchReadOnlyAccess"
    staging.policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
    development.policy_arn    = "arn:aws:iam::aws:policy/PowerUserAccess"
    default.policy_arn     = ""
  }
}

variable "operator_policy_arns" {
  type = "map"

  default = {
    production.policy_arn = "arn:aws:iam::aws:policy/AmazonECS_FullAccess"
    development.policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
    default.policy_arn  = ""
  }
}
