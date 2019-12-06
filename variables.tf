variable "enabled" {
  description = "whether to create a bucket"
  type = bool
  default = false
}

variable "bucket_name" {
  description = "name of the bucket"
  type = string
  default = ""
}

variable "acl" {
  description = "who has access"
  type = string
  default = ""
}

variable "region" {
  description = "where to create the bucket"
  type = string
}

variable "force_destroy" {
  description = "force destruction?"
  type = bool
  default = false
}

variable "policy" {
  description = "policy for the bucket"
  type = string
  default = ""
}

variable "versioning_enabled" {
  description = "enable versioning?"
  type = bool
  default = false
}

variable "sse_algorithm" {
  type        = string
  default     = "AES256"
  description = "The server-side encryption algorithm to use. Valid values are `AES256` and `aws:kms`"
}

variable "kms_master_key_arn" {
  type        = string
  default     = ""
  description = "The AWS KMS master key ARN used for the `SSE-KMS` encryption. This can only be used when you set the value of `sse_algorithm` as `aws:kms`. The default aws/s3 AWS KMS master key is used if this element is absent while the `sse_algorithm` is `aws:kms`"
}

variable "tags" {
  description = "tags for th resources"
  type = map(string)
  default = {}
}
