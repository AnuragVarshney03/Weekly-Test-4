resource "kubernetes_deployment" "test_website" {
  metadata {
    name = "test_website"
  }

  spec {
    replicas = 5

    selector {
      match_labels = {
        app = "test_website"
      }
    }

    template {
      metadata {
        labels = {
          app = "test_website"
        }
      }

      spec {
        container {
          image = "website_container:latest"
          name  = "website-container"
        }
      }
    }
  }
}