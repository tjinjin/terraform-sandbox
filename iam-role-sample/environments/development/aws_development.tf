provider "aws" {
  alias   = "dev-1"
  region  = "${var.aws_region}"
  profile = "${var.default_profile}"

  assume_role {
    # dummy account
    role_arn = "arn:aws:iam::xxxxxxxxxxxx:role/secret"
  }
}

provider "aws" {
  alias   = "dev-2"
  region  = "${var.aws_region}"
  profile = "${var.default_profile}"

  assume_role {
    # dummy account
    role_arn = "arn:aws:iam::yyyyyyyyyyyyy:role/secret"
  }
}
