# HINT: use `terraform plan` & `terraform apply` to create the resources

# TODO: Create a google_storage_bucket 
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket

# TODO: Create an IAM binding with the role Storage Object User and yourself as the member
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam

# TODO: Create a data source for a GCS Bucket and use following bucket: hack-and-heat-2024-task-5
# A data source allows Terraform to use information defined outside of Terraform, in this case our already exisiting bucket in the GCP project.
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/storage_bucket

# TODO: Upload Readme.md to the bucket you fetched above with your data source. Use your name as a prefix for the storage bucket object resource.
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object
