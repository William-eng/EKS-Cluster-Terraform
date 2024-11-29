terraform {
  backend "s3" {
    bucket         = "ktrontech-eks-terraform-state"         # Replace with your S3 bucket name
    key            = "global/s3/terraform.tfstate" # Replace with your state file path
    region         = "us-east-1"                # Replace with your AWS region
    dynamodb_table = "terraform-locks"            # Replace with your DynamoDB table name
    encrypt        = true                         # Ensures the state is encrypted
  }
}
