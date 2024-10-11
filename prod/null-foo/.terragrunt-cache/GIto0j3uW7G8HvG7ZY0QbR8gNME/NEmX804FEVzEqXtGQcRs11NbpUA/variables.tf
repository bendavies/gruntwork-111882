variable "input" {
  description = "The input string that controls replacement of the `terraform_data.null` resource. Whenever either this input or the `input_list` changes, the `terraform_data.null` resource will be replaced."
  type        = string
}