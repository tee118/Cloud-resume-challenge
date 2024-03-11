terraform {
  backend "s3" {
       bucket = "[AWS_S3_BUCKET]"
       key    = "[AWS_BUCKET_KEY_NAME]"
       region = "east-us-1"
  }
}
