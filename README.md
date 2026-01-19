# Terraform S3 Static Website Deployment

This project deploys a **static website to AWS S3** using **Terraform**, with automated deployments via **GitHub Actions**.

---

## 🏗 Architecture

- **AWS S3** – Static website hosting
- **Terraform** – Infrastructure as Code (IaC)
- **GitHub Actions** – CI/CD pipeline
- **IAM** – Secure access via GitHub Secrets

---

## 🚀 Deployment Workflow

1. Push code to the `main` branch
2. GitHub Actions runs:
   - `terraform init`
   - `terraform validate`
   - `terraform plan`
   - `terraform apply`
3. Website files are uploaded to S3
4. Static site becomes publicly accessible

---

## 🔐 Required GitHub Secrets

Set the following secrets in your repository:

| Name | Description |
|-----|-------------|
| `AWS_ACCESS_KEY_ID` | IAM access key |
| `AWS_SECRET_ACCESS_KEY` | IAM secret key |
| `AWS_REGION` | AWS region (e.g. `us-east-1`) |

### Prerequisites
- Terraform `>= 1.3`
- AWS CLI configured
- An AWS account