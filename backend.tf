terraform {
  backend "s3" {
    bucket  = var.bucket
    key     = "${var.bucket-path}/terraform.tfstate"
    region  = var.region
    encrypt = true
  }
}
