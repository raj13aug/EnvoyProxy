
resource "helm_release" "envoy_gateway" {
  name          = "envoy-gateway"
  repository    = "oci://docker.io/envoyproxy"
  chart         = "gateway-helm"
  namespace     = "envoy-gateway-system"
  version       = "latest"
  recreate_pods = true
}