terraform {
  backend "s3" {
    key            = "s3://tejuscv/infra.tfstate"
  }
}
