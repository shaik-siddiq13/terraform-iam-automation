

\# Terraform IAM Role \& Policy Automation



\## Project Overview



This project uses Terraform to automate AWS IAM Role and IAM Policy creation using reusable Terraform modules.



The IAM Role is configured to be assumed by the EC2 service. A customer-managed IAM policy is attached to the role, providing read-only access to a specific Amazon S3 bucket.



\## Architecture



```text

Terraform Configuration

&#x20;       |

&#x20;       v

Reusable IAM Module

&#x20;       |

&#x20;       v

AWS IAM Role

(EC2 Trusted Entity)

&#x20;       |

&#x20;       v

IAM Policy Attachment

&#x20;       |

&#x20;       v

S3 Read-Only Permissions

&#x20;  |              |

&#x20;  v              v

ListBucket     GetObject

&#x20;       |

&#x20;       v

Existing S3 Bucket

```



\## AWS Resources Created



\- AWS IAM Role

\- Customer-managed IAM Policy

\- IAM Role Policy Attachment



\## IAM Permissions



| Permission | Description |

|---|---|

| s3:ListBucket | List objects in the specified bucket |

| s3:GetObject | Read/download objects from the bucket |



The policy follows the Least Privilege Principle by granting only the required read permissions.



\## Project Structure



```text

terraform-iam-automation/

│

├── modules/

│   └── iam/

│       ├── main.tf

│       ├── variables.tf

│       └── outputs.tf

│

├── providers.tf

├── variables.tf

├── main.tf

├── outputs.tf

├── .gitignore

└── .terraform.lock.hcl

```



\## Technologies Used



\- Terraform

\- AWS IAM

\- Amazon S3

\- AWS CLI

\- Git and GitHub

\- HCL



\## Terraform Workflow



Initialize Terraform:



```bash

terraform init

```



Format configuration:



```bash

terraform fmt -recursive

```



Validate configuration:



```bash

terraform validate

```



Preview infrastructure changes:



```bash

terraform plan

```



Create AWS resources:



```bash

terraform apply

```



View Terraform outputs:



```bash

terraform output

```



\## Key Concepts Practiced



\- Terraform modules and reusable configurations

\- Input variables and outputs

\- AWS IAM Roles and Policies

\- IAM trust policies

\- IAM policy attachments

\- Least Privilege Principle

\- Terraform state management

\- Infrastructure as Code (IaC)

\- Git version control



\## Important Notes



\- This project creates IAM resources only.

\- No EC2 instance is created.

\- The IAM Role is trusted by the EC2 service but is not attached to an EC2 instance.

\- The S3 policy grants read-only permissions to the specified bucket.

\- Configure AWS credentials securely before running Terraform.

\- Do not commit Terraform state files or sensitive configuration files.



\## Author



\*\*Siddiq Shaik\*\*



GitHub: https://github.com/shaik-siddiq13



