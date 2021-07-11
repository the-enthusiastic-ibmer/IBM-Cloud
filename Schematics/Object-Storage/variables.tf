# Uncomment the lines below when using the Terraform CLI
# Set your API KEY to the environment variable TF_VAR_E_API_KEY
# Change the region, cos_instance_name-1, bucket_name-1

/*
variable "E_API_KEY" {
  description = "API Key"
  type = string
}
*/

variable "region" {
  description = "Datacenter Region"
  default= "<insert region, us-south/east, etc>"
}
variable "cos_instance_name-1" {
  type = string
  default = "<insert-instance-name>"
}
variable "bucket_name-1" {
  type = string
  default = "<insert-bucket-name>"
}
