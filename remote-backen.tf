terraform {
  backend "s3" {
    bucket         = "demobucket-167"
    key            = "demo/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "demotable" 
    encrypt        = true
  }
}
