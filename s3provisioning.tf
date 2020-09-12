provider "aws" {
    # access_key = ""
    # secret_key = ""
    region = "ap-south-1"
}

resource "aws_s3_bucket" "cvwebsite" {
    bucket = "website.shubhamjoshi.co.in"
    acl = "public-read"

    website {
        index_document = "index.html"
        error_document = "404.html"
    }
}