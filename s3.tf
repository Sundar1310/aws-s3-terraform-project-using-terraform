#Terraform Block
terraform {
  required_version = "1.12.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.0"
    }
  }
}

# resource "aws_s3_object" "image_upload" {
#   bucket = "my-terraform-project-s3-bucket"
#   key    = "images/devops.jpeg"
#   source = "images/devops.jpeg"

#   content_type = "image/jpeg"
# }