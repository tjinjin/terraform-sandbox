module "dev-1" {
  providers = {
    aws = "aws.dev-1"
  }

  source               = "../../module/controller/group"
  admin_policy_arn     = "${lookup(var.admin_policy_arns,"development.policy_arn",var.admin_policy_arns["default.policy_arn"])}"
  developer_policy_arn = "${lookup(var.developer_policy_arns,"development.policy_arn",var.developer_policy_arns["default.policy_arn"])}"
  operator_policy_arn  = "${lookup(var.operator_policy_arns,"development.policy_arn",var.operator_policy_arns["default.policy_arn"])}"
}

module "dev-2" {
  providers = {
    aws = "aws.dev-2"
  }

  source               = "../../module/controller/group"
  admin_policy_arn     = "${lookup(var.admin_policy_arns,"development.policy_arn",var.admin_policy_arns["default.policy_arn"])}"
  developer_policy_arn = "${lookup(var.developer_policy_arns,"development.policy_arn",var.developer_policy_arns["default.policy_arn"])}"
  operator_policy_arn  = "${lookup(var.operator_policy_arns,"development.policy_arn",var.operator_policy_arns["default.policy_arn"])}"
}
