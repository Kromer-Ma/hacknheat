# HINT: use `terraform plan` & `terraform apply` to create the resources

# TODO: Create a google_storage_bucket 
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket
resource "google_storage_bucket" "my-bucket" {
  name          = "manuel-bucket"
  location      = "EU"
}

# TODO: Create an IAM binding with the role Storage Object User and yourself as the member
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_iam
resource "google_storage_bucket_iam_binding" "binding" {
  bucket = google_storage_bucket.my-bucket.name
  role = "roles/storage.admin"
  members = [
    "user:manuel.kromer@senacor.com",
  ]
}

# TODO: Create a data source for a GCS Bucket and use following bucket: hack-and-heat-2024-task-5
# A data source allows Terraform to use information defined outside of Terraform, in this case our already exisiting bucket in the GCP project.
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/data-sources/storage_bucket
data "google_storage_bucket" "my-bucket" {
  name = "my-manuel-bucket"
}

# TODO: Upload Readme.md to the bucket you fetched above with your data source. Use your name as a prefix for the storage bucket object resource.
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/storage_bucket_object
resource "google_storage_bucket_object" "picture" {
  name   = "butterfly01-manuel"
  source = "/images/nature/garden-tiger-moth.jpg"
  bucket = "image-store"
}
