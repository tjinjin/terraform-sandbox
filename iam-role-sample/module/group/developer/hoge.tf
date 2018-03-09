module "hoge" {
  source = "../../iam_role"

  role_arn      = "arn:aws:iam::cccccccccccc:root"
  iam_role_name = "hoge_developer"
  policy_arn    = "${var.policy_arn}"
}
