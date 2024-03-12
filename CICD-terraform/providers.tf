terraform {
   backend "s3" {
       bucket = "tejuscv"
       dynamodb_table = "state-lock"
       key    = "infra.tfstate"
       region = "eu-west-2"
   }
}