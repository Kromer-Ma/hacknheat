# TODO: Create a service account
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account
resource "google_service_account" "manuel_service_account" {
  account_id   = "service-account-manuel"
  display_name = "Service Account"
}

# TODO: Create a service account key
# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_service_account_key
resource "google_service_account_key" "mykey" {
  service_account_id = google_service_account.manuel_service_account.name
  public_key_type    = "TYPE_X509_PEM_FILE"
}

# TODO: Use the terraform cli to print the state with sensitive values hidden
# terraform show

# TODO: Use the terraform cli to print the state with sensitive values readable
# terraform show -json

# TODO: Use the terraform cli to print a list of  all resources in the state
# terraform state list

# TODO: Use the terraform cli to print all attributes of a resource
# terraform state show google_service_account_key.{key_name}
