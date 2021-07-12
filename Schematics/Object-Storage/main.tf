# Uncomment these lines if you are using the Terraform CLI
#provider "ibm" {
#  region = var.region
#  ibmcloud_api_key = var.E_API_KEY
#}

data "ibm_resource_group" "resgroup" {
  is_default = "true"
}

resource "ibm_resource_instance" "resinstance" {
  name = var.cos_instance_name-1
  service = "cloud-object-storage"
  plan = "lite"
  location = "global"
  resource_group_id = data.ibm_resource_group.resgroup.id
}

data "ibm_resource_instance" "resinstance_id" {
  name = var.cos_instance_name-1
  service = "cloud-object-storage"
  location = "global"
}

resource "ibm_cos_bucket" "my_bucket" {
  bucket_name = var.bucket_name-1
  resource_instance_id = data.ibm_resource_instance.resinstance_id.id
  region_location = var.region
  storage_class = "standard"
}
