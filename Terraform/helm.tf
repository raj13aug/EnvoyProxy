resource "helm_release" "envoy_gateway" {
  name          = "envoy-gateway"
  repository    = "oci://docker.io/envoyproxy"
  chart         = "gateway-helm"
  namespace     = "envoy"
  values        = [file("${path.module}/configs/envoy-gateway-values.yaml")]
  version       = "v1.6.1"
  recreate_pods = true
}