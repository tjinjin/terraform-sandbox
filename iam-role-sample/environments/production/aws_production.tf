provider "aws" {
  alias   = "prod-1"
  region  = "${var.aws_region}"
  profile = "${var.default_profile}"

  assume_role {
    # dummy account
    role_arn = "arn:aws:iam::zzzzzzzzzzzz:role/secret"
  }
}

provider "aws" {
  alias   = "prod-2"
  region  = "${var.aws_region}"
  profile = "${var.default_profile}"

  assume_role {
    # dummy account
    role_arn = "arn:aws:iam::wwwwwwwwwwww:role/secret"
  }
}
