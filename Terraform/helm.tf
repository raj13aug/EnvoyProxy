
resource "helm_release" "envoy_gateway" {
  name             = "envoy-gateway"
  repository       = "https://charts.appscode.com/stable"
  chart            = "gateway-api"
  namespace        = "envoy-gateway-system"
  version          = "latest"
  create_namespace = true
}