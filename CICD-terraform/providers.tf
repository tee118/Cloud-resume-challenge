terraform {
  backend "s3" {
    key            = "infra.tfstate"
  }
}
