resource "aws_cloudfront_distribution" "example" {
   origin {
      domain_name = "shreyasmanhandlinghere.s3.us-east-2.amazonaws.com"
      origin_id   = "shreyasmanhandlinghere.s3.us-east-2.amazonaws.com"
 }
  enabled             = true
 default_cache_behavior {
    allowed_methods  = ["GET", "HEAD"]
    cached_methods   = ["GET", "HEAD"]
    target_origin_id = "shreyasmanhandlinghere.s3.us-east-2.amazonaws.com"

   viewer_protocol_policy = "allow-all"
    forwarded_values {
      query_string = false
      cookies {
        forward = "none"
      }
    }
  }

  viewer_certificate {
    cloudfront_default_certificate = true
  }

  price_class = "PriceClass_200"

  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
}
