resource "aws_s3_bucket" "static_site" {
    bucket = var.bucket_name

    tags = {
        Name = "Terraform Static Website"
        Environment = "Dev"
    }
}

resource "aws_s3_bucket_website_configuration" "website" {
    bucket = aws_s3_bucket.static_site.id
    index_document {
      suffix = "index.html"
    }
}

resource "aws_s3_bucket_policy" "public_policy" {
    bucket = aws_s3_bucket.static_site.id

    policy = jsonencode({
        Version = "2012-10-17"
    Statement = [
      {
        Effect = "Allow"
        Principal = "*"
        Action = "s3:GetObject"
        Resource = "${aws_s3_bucket.static_site.arn}/*"
      }
    ]
  })
}