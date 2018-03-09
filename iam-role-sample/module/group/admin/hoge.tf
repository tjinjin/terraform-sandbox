module "hoge" {
  source = "../../iam_role"

  role_arn      = "arn:aws:iam::bbbbbbbbbbbb:root"
  iam_role_name = "hoge_admin"
  policy_arn    = "${var.policy_arn}"
}
