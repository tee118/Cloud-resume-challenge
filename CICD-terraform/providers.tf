- id: backend-config
  uses: amannm/terraform-s3-backend-action@v1
  with:
    account-id: "171139160358"
    region: "eu-west-2"
    role: "github-cloud-resume-counter-config-tfstate"
    bucket: "tejusite"
    key: "infra.tfstate"
- name: Generate backend config
  run: |
    echo "terraform { backend \"s3\" { bucket = \"${{ steps.backend-config.outputs.bucket }}\" key = \"${{ steps.backend-config.outputs.key }}\" region = \"${{ steps.backend-config.outputs.region }}\" } }" > backend.tf
- name: Initialize Terraform
  run: terraform init
