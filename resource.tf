#resource
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-terraform-project-s3-bucket"

  tags = {
    Name        = "my terraform project s3 bucket"
    Environment = "Dev"
  }

}