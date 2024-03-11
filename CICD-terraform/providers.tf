terraform {
   backend "s3" {
       bucket = "tejuscv"
       key    = "infra.tfstae"
       region = "eu-west-2"
   }
}