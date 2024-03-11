terraform {
  backend "s3" {
    key            = "arn:aws:s3:::tejuscv/infra.tfstate"
  }
}
