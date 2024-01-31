1.1. The architecture of the infrastructure you set up.

a) Private bucket
b) Network with one subnet and NAT gateway allowing external access to the virtual machine
c) Virtual Machine with Nginx service installed
d) Postgres database
e) Secret manager to access the random database password

1.2. Follow the steps below in the terminal to create the infrastructure on Google Cloud:

a) Navigate to the project code:
cd terraform-gcp-infrastructure

b) Update the provider.tf with the location of your credential file:
code provider.tf

c) Initialise the terraform projec:
terraform init

d) Verify your build plan:
terraform plan

e) Deploy the configuration:
terraform apply -auto-approve

f) When you are done, delete all resources:
terraform destroy -auto-approve

1.3. Explain how you structured your Terraform scripts and why?

The project was structured with a root and nested modules.
This approach is suitable for large projects, with clearly defined subdirectory structures
containing multiple modules.

1.4. How would you monitor these created resources?

I would use a commercial or open source tool to monitor and detect drift in the configuration.
For example, GCP Asset Inventory, Terraform Cloud, Driftcl, TestInfra, Kitchen-terraform and so on.

1.5. If given more time, what improvements or additional features would you add to this infrastructure?

I would to add more security features and additional parameters to make the modules more complete and reusable.
However, I prefer to use the official modules provided by Google where I can focus in the configuration
of the resources instead of build it from the scratch.

About the bucket configuration:

2.2. The bucket should be in the us-central1 region.
2.3. The bucket should be set to Multi-Regional storage class.

I was not able to set region to the bucket

"Multi-Regional storage: Equivalent to Standard storage, except Multi-Regional storage can only be used for objects stored in multi-regions or dual-regions."
source: https://cloud.google.com/storage/docs/storage-classes
