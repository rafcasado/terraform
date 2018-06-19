#resource "google_dns_record_set" "devops1" {
#  name = "rancher.rafcasado.com.br."
#  type = "A"
#  ttl  = 1
#
#  managed_zone = "rafcasado"
#
#  rrdatas = ["${google_compute_address.ipexterno.address}"]
#}
#
#resource "google_dns_record_set" "devops2" {
#  name = "www.rancher.rafcasado.com.br."
#  type = "A"
#  ttl  = 1
#
#  managed_zone = "rafcasado"
#
#  rrdatas = ["${google_compute_address.ipexterno.address}"]
#}
#
#resource "google_dns_managed_zone" "devops" {
#  name        = "rafcasado"
#  dns_name    = "rafcasado.com.br."
#  description = "Production DNS zone"
#}

