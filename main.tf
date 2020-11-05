resource "kubernetes_namespace" "this" {
  metadata {
    name = var.namespace
  }

  lifecycle {
    ignore_changes = [
      metadata[0].annotations, # supports idempotency in a rancher managed cluster
      metadata[0].labels       # supports idempotency in a rancher managed cluster
    ]
  }
}

module "hub" {
  source    = "github.com/staywell/terraform-kubernetes-app?ref=0.1.0"
  name      = "hub"
  namespace = kubernetes_namespace.this.metadata[0].name
  image     = var.hub_image
  replicas  = 1
  port      = 4444
  config    = merge(local.hub, var.hub_config)
  host      = var.host
}

locals {
  hub = {
    SE_OPTS = "-timeout 100 -maxSession 50"
  }
}

module "chrome" {
  source    = "github.com/staywell/terraform-kubernetes-app?ref=0.1.0"
  name      = "chrome"
  namespace = kubernetes_namespace.this.metadata[0].name
  image     = var.chrome_image
  replicas  = var.chrome_replicas
  port      = 5555
  config    = merge(local.chrome, var.node_config)
}

locals {
  chrome = {
    HUB_HOST = "hub:4444"
    SE_OPTS  = "-timeout 100 -maxSession 1"
  }
}
