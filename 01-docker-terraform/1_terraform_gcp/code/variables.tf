variable "credentials" {
  description = "My Credentials"
  default     = "./keys/creds.json"
  type        = string
}


variable "project" {
  description = "Project"
  type        = string
}

variable "region" {
  description = "Region"
  type        = string
}

variable "location" {
  description = "Project Location"
  type        = string
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  type        = string
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  type        = string
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
  type        = string
}
