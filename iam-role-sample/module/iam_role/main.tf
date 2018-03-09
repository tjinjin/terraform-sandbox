data "aws_iam_policy_document" "assume_role" {
  statement {
    actions = ["sts:AssumeRole"]

    principals {
      type        = "AWS"
      identifiers = ["${var.role_arn}"]
    }
  }
}

resource "aws_iam_role" "role" {
  name               = "${var.iam_role_name}"
  assume_role_policy = "${data.aws_iam_policy_document.assume_role.json}"
}

resource "aws_iam_role_policy_attachment" "attach_policy" {
  role       = "${aws_iam_role.role.name}"
  policy_arn = "${var.policy_arn}"

  # skip if var.policy_arn is ""
  count = "${var.policy_arn != "" ? 1 : 0}"
}
