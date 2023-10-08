terraform {
  backend "gcs" {
    bucket = "tf_gcp_cred"
    prefix = "dv1"
  }
}
