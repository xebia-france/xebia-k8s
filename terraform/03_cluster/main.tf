data "terraform_remote_state" "infra" {
  backend = "local"

  config {
    path = "${path.module}/../01_infra.tfstate"
  }
}

data "terraform_remote_state" "bastion" {
  backend = "local"

  config {
    path = "${path.module}/../02_bastion.tfstate"
  }
}


provider "aws" {
  region = "${var.region}"
}
