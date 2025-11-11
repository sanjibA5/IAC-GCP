resource "google_container_cluster" "name" {
  name             = var.cluster_name
  location         = "us-west1"
  enable_autopilot = true

}

resource "google_artifact_registry_repository" "my-repo" {
  repository_id =  var.artifact_reg_name
  description   = "example docker repository"
  location      = "us"
  format        = "DOCKER"
}