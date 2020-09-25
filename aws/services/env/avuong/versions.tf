terraform {
  required_version = ">= 0.12.7, < 0.13"

  required_providers {
    aws = ">= 2.68, < 4.0"
  }

	backend "local" {
		config = {
			path = avuong.tfstate
		}
  }
}
