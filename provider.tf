terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.25.0"
    }
  }
}

provider "google" {
  #credentials = file("tf_sa_vidya-00001.json")
  project     = var.var_project
  region      = "asia-south1" 
}
