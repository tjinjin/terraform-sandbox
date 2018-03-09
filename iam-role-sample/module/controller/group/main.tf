module "admin" {
  source = "../../group/admin"

  policy_arn = "${var.admin_policy_arn}"
}

module "developer" {
  source = "../../group/developer"

  policy_arn = "${var.developer_policy_arn}"
}

module "operator" {
  source = "../../group/operator"

  policy_arn = "${var.operator_policy_arn}"
}
