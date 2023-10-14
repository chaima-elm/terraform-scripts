terraform {
  backend "s3" {
    bucket = "terra-state-shamia"
    key    = "terraform/backend"
    region = "us-east-2"
  }
}