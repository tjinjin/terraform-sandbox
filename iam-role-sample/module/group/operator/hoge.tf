module "hoge" {
  source = "../../iam_role"

  role_arn      = "arn:aws:iam::aaaaaaaaaaaa:root"
  iam_role_name = "hoge_operator"
  policy_arn    = "${var.policy_arn}"
}
