# Creamos un dominio nuevo

resource "digitalocean_domain" "envfhf" {
  name = "envfhf.click"
}

# Add a record to the domain
resource "digitalocean_record" "www" {
  domain = "${digitalocean_domain.envfhf.name}"
  type   = "A"
  name   = "www"
  ttl    = "50"
  value  = "${digitalocean_droplet.web.ipv4_address}"
}

