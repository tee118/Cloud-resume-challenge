terraform {
   backend "s3" {
       bucket = "tejusite"
       key    = "infra.tfstate"
       region = "eu-west-2"
   }
   }