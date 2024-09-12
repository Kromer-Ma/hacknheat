provider "google" {
    project = var.project_id
    credentials = file("sa_key.json")
}
