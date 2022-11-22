terraform {
  backend "s3" {
    bucket = "myapptfstate-bucket"
    key    = "dove-terraform/backend-exercise7"
    region = "eu-west-1"
  }
}