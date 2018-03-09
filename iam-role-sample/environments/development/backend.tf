terraform {
  backend "s3" {
    bucket  = "xxxxxxx"
    key     = "iam_role/development.tfstate"
    region  = "ap-northeast-1"
    profile = "secret"
  }
}
