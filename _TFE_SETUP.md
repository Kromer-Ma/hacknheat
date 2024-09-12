# Configuration of HCP Terraform

## 1. Create a workspace and link it to you GitHub repository

> [!CAUTION]
> The name of the workspace must be `hacknheat` as our Workload Identity Federation Pool in GCP does only allow and therefore provide tokens for workloads with this workspace name. The workspace can be renamed in the settings.

![](./screenshots/tfe_org.png)
![](./screenshots/tfe_vcs.png)
![](./screenshots/tfe_repo.png)

## 2. Connect your workspace via Workload Identity Federation to the Hack&Heat GCP project

To connect the workspace using WIF to GCP add the following env vars to the workspace:

- `TFC_GCP_PROVIDER_AUTH`: `true`
- `TFC_GCP_RUN_SERVICE_ACCOUNT_EMAIL`: `hacknheat@senacor-hack-and-heat-2024.iam.gserviceaccount.com`
- `TFC_GCP_WORKLOAD_PROVIDER_NAME`: `projects/370161324872/locations/global/workloadIdentityPools/hacknheat/providers/hcp-terraform`

![](./screenshots/tfe_vars.png)
