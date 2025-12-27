🚀 Project: Create an AWS S3 Bucket Using Terraform (IaC) – Step by Step
🔧 Tools & Technologies Used
Amazon Web Services (AWS)
Terraform
AWS CLI
Visual Studio Code
IAM

📌 Project Objective
To provision and manage an AWS S3 bucket using Terraform following Infrastructure as Code (IaC) principles, enabling automation, repeatability, and version control of cloud infrastructure.

🧩 Step 1: AWS Account & IAM Setup
Logged into AWS Management Console
Created an IAM User with:
Programmatic access
Permission: AmazonS3FullAccess
Downloaded Access Key and Secret Key

📌 Reason: Terraform requires secure credentials to communicate with AWS APIs.

🧩 Step 2: Configure AWS CLI
Configured AWS credentials locally so Terraform can authenticate with AWS.
#aws configure

Entered:
AWS Access Key ID
AWS Secret Access Key
Default region: us-east-1
Output format: json

✅ Verified configuration using:
#aws s3 ls

🧩 Step 3: Terraform Project Setup in VS Code
Created a clean Terraform project structure:

Terraform s3 Project/
├── provider.tf
├── s3.tf
├──resource.tf
└── images/
      └──devops.jpeg

Opened the folder in VS Code for development.

🧩 Step 4: Define AWS Provider (provider.tf)
Configured Terraform to use AWS as the cloud provider.

provider "aws" {
  region = "ap-south-1"
}
📌 Purpose: Defines where Terraform should create resources.

🧩 Step 5: Create S3 Bucket Resource (s3.tf)
Defined an S3 bucket using Terraform resource block.

resource "aws_s3_bucket" "my_bucket" {
  bucket = "sundar-terraform-s3-demo-2025"

  tags = {
    Name        = "Terraform S3 Bucket"
    Environment = "Dev"
  }
}

⚠️ Important:
S3 bucket names must be globally unique
Tags help in cost tracking and resource management

#(resource.tf)
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-terraform-project-s3-bucket"

  tags = {
    Name        = "my terraform project s3 bucket"
    Environment = "Dev"
  }

}

🧩 Step 6: Initialize Terraform
Initialized Terraform to download required provider plugins.

#terraform init
✅ Terraform created .terraform directory and locked provider versions.

🧩 Step 7: Validate Configuration
Validated Terraform files for syntax and configuration errors.
#terraform validate

✔ Ensures clean and error-free code.

🧩 Step 8: Terraform Plan (Dry Run)
Generated an execution plan to preview infrastructure changes.

#terraform plan
📌 Shows:

Resources to be created
No changes made yet (safe preview)

🧩 Step 9: Apply Terraform Configuration
Applied the configuration to create the S3 bucket.

#terraform apply
Typed yes to confirm.

🎉 Terraform successfully provisioned the S3 bucket

🧩 Step 10: Verification

Verified the bucket creation:

AWS Console → S3 → Buckets

Confirmed:
Bucket name


🧹 Step 11: Destroy Infrastructure (Cleanup)
Safely removed resources when no longer required.
#terraform destroy
📌 Demonstrates cost control and environment cleanup

🧠 Key DevOps Concepts Demonstrated
Infrastructure as Code (IaC)
Automation & Repeatability
Terraform State Management
Idempotency
AWS Resource Provisioning
Version Control Ready Infrastructure

📈 Outcome
Successfully automated S3 bucket creation using Terraform
Improved understanding of AWS + Terraform integration
Hands-on experience aligned with DevOps Engineer role requirements
