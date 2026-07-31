terraform{
    required_providers{
        aws={
            source = "hashicorp/aws"
            version = "5.37.0"
        }
    }
}

#actively managed by us
resource "aws_s3_bucket" "my_bucket"{
    bucket = "my-sample-bucket2324"
}

variable "bucket_name"{
    type = string
    description = "My variable used for bucket name"
    default = "my_default_bucket_name"

}

output "bucket_id" {
    value=aws_s3_bucket.my_bucket.id
}

locals{
    local_example="this is a local value example"
}


