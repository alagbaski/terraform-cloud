resource "aws_s3_bucket" "terraform_state" {
  bucket = "opsmen-terraform-bucket"
  lifecycle {
    prevent_destroy = true
  }
}

# Enable versioning so we can see the full revision history of our state files

resource "aws_s3_bucket_versioning" "versioning" {
  bucket = "opsmen-terraform-bucket"
  versioning_configuration {
    status = "Enabled"
  }
}

# Enable server-side encryption by default

resource "aws_s3_bucket_server_side_encryption_configuration" "state_encryption" {
  bucket = "opsmen-terraform-bucket"

  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "AES256"
    }
  }
}

# Dynamo DB Table Configuration

resource "aws_dynamodb_table" "terraform_locks" {
  name         = "terraform-locks"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }

  lifecycle {
    prevent_destroy = true
  }
}
