terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "6.3.0"
        }
    }

    backend "s3" {
        bucket      = "pract-tf-remote-state"
        key         = "pract-dev-infra" # you should have unique keys with in the bucket, same should not be used in other repos or tf projects
        region      = "us-east-1"
        dynamodb_table = "pract-remote-state"

    }
}

provider aws {
    #configuration AWS Provider
    region = "us-east-1"
}
