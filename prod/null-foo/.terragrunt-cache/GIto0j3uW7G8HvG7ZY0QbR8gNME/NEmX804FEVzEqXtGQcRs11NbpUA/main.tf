terraform {
  required_version = ">= 1.1.0"
}

resource "terraform_data" "null" {
  input = var.input
}
