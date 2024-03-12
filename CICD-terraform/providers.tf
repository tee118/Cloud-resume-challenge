terraform {
   backend "s3" {
       bucket = "tejuscv"
       key    = "infra.tfstate"
       region = "eu-west-2"
   }
   }