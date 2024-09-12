# Hack and Heat 2024 - Terraform Workshop

Welcome to the workshop. If you haven't already followed the initial setup that was sent out by mail (due to unforeseen events or just laziness 🦥), please start with the section PREPARATION. Otherwise you will find the tasks in the following sections. Happy hacking! 😄

- The structure of the project has already been created for you. Just work in the files provided in this repository. 
- There are helpful links in the files to pages containing information.
- When you need help, please inform your workshop presenter in the office.

## Preparation (skip, if already done when you received our welcome mail ✉️)
- 0.1 Create a HCP Terraform account under https://app.terraform.io/public/signup/account
- 0.2 Install the terraform CLI (installation guidance: https://developer.hashicorp.com/terraform/install)
- 0.3 Check if you can access our [GCP project](https://console.cloud.google.com/welcome?project=senacor-hack-and-heat-2024). You may have to log in with your senacor email account to Google.

## Task 1 - Google Cloud Storage (GCS)
- 1.1 Have a look in our empty [GCP Project](https://console.cloud.google.com/welcome?project=senacor-hack-and-heat-2024)
- 1.2 The workshop team will give you the key.json file for your service account. Store this key in `sa_key.json`.
> [!CAUTION]
> This is not a recommended practice as service account keys shouldn't be handled like this. This approach was only taken for our workshop as shortcut to spare you the installation of the Google Cloud SDK. We will later on delete this key and authorize via Workload Identity Federation as best practice.
- 1.3 Run `terraform init` in your project's root to install the Google provider (you can find the provider in `providers.tf`)
- 1.4 Create a GCS Bucket -> `bucket.tf` (check current buckets [here](https://console.cloud.google.com/storage/browser?referrer=search&project=senacor-hack-and-heat-2024&prefix=&forceOnBucketsSortingFiltering=true))
- 1.5 Create an IAM binding for the Bucket with the Role Storage Object User and yourself as the member
- 1.6 Destroy the bucket by either commenting out or deleting the code

## Task 2 - Terraform State - service_account.tf
- 2.1 Create a Service Account (check current service accounts [here](https://console.cloud.google.com/iam-admin/serviceaccounts?project=senacor-hack-and-heat-2024))
- 2.2 Create a Service Account Key (check current service account keys by clicking on your newly created service account and then on `keys`)
- 2.3 Inspect the state file with the terraform cli (hints can be found in the tf file)

## Task 3 - Terraform Modules - ./module and main.tf
- 3.1 In the variables.tf define the name for the disk and for the instance
- 3.2 In the main.tf in the module folder create a disk
- 3.3 In the main.tf in the module folder create a VM and attach the disk
- 3.4 In the main.tf in the base folder use the module to create both resources (provide the names as arguments of the module)
- 3.5 In the outputs.tf file in the module folder define the self links of the resources
  
## Task 4 - HCP Terraform and Remote State
- 4.1 Delete your `sa_key.json`. It is not best practice to authorize via service account keys that fly around ✈️.
- 4.2 Follow the TFE_SETUP.md and connect your repository to HCP Terraform.
- 4.3 Instead of using `terraform plan` and `terraform apply` locally, push your code to the repository and follow the triggered GitHub action. 
- 4.4 Inspect the state file remotely
- 4.5 Use the terraform CLI and inspect the state file again
  
## Task 5 - Data Sources - bucket.tf
- 5.1 Create a data source for a GCS Bucket and use the following already existing bucket in our project: `hack-and-heat-2024-task-5`
- 5.2 Upload this file to the bucket with your name prefixed
