terraform {
  required_providers {
    namecheap = {
      source  = "namecheap/namecheap"
      version = ">= 2.0.0"
    }
  }
}

# https://thomaseckert.dev
#
# Personal site. Hosted on Vercel.
resource "namecheap_domain_records" "thomaseckert-dev" {
  domain = "thomaseckert.dev"
  mode   = "OVERWRITE"

  record {
    hostname = "@"
    type     = "CNAME"
    address  = "thomaseckert-dev.fly.dev"
  }

  record {
    hostname = "www"
    type     = "CNAME"
    address  = "thomaseckert-dev.fly.dev"
  }

  record {
    hostname = "_atproto"
    type     = "TXT"
    address  = "did=did:plc:4oreta6v74d5shrudhk4o6q5"
  }

  record {
    hostname = "__acme-challenge"
    type     = "CNAME"
    address  = "thomaseckert.dev.g65w3o.flydns.net."
  }
}

# https://offseasonmag.com
#
# Official site for the Offseason literary journal.
resource "namecheap_domain_records" "offseasonmag-com" {
  domain     = "offseasonmag.com"
  mode       = "OVERWRITE"
  email_type = "MX"

  record {
    hostname = "@"
    type     = "A"
    address  = "76.76.21.21"
  }

  record {
    hostname = "www"
    type     = "CNAME"
    address  = "cname.vercel-dns.com."
  }

  record {
    hostname = "studio"
    type     = "CNAME"
    address  = "cname.vercel-dns.com."
  }

  record {
    hostname = "dev"
    type     = "CNAME"
    address  = "fd8eb14a73ceba13.vercel-dns-016.com"
  }

  record {
    hostname = "send"
    type     = "MX"
    address  = "feedback-smtp.us-east-1.amazonses.com"
  }

  record {
    hostname = "send"
    type     = "TXT"
    address  = "v=spf1 include:amazonses.com ~all"
  }

  record {
    hostname = "resend._domainkey"
    type     = "TXT"
    address  = "p=MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDMSv4Yfvsh9D1Z0Y3GKk08g7zgvrR2a/YL3kyMESped2TJE4rKu6ZUq/OXfwdNjocowv+fbwJ9ZS8cp5CNH0fV1WSjZIwZ3IRIzc9NwMi6dsdgXnv1QSPkR1HwSjW9H+5iJmoTvHNPCarqlgB8pz8lYrJPGrVYkm4LoikzT+erJQIDAQAB"
  }

  record {
    hostname = "_dmarc"
    type     = "TXT"
    address  = "v=DMARC1; p=none;"
  }
}

# https://gradienthub.art
#
# Create and share CSS gradients. Hosted on Fly.
resource "namecheap_domain_records" "gradienthub-art" {
  domain = "gradienthub.art"
  mode   = "OVERWRITE"

  record {
    hostname = "@"
    type     = "A"
    address  = "168.220.95.38"
  }

  record {
    hostname = "@"
    type     = "AAAA"
    address  = "2a09:8280:1::3:6820"
  }
}

# https://devy.page
#
# Developer blogs in markdown. Hosted on Fly.
resource "namecheap_domain_records" "devy-page" {
  domain = "devy.page"
  mode   = "OVERWRITE"

  record {
    hostname = "@"
    type     = "CNAME"
    address  = "devy-frontend.fly.dev."
  }

  record {
    hostname = "www"
    type     = "CNAME"
    address  = "devy-frontend.fly.dev."
  }


  record {
    hostname = "api"
    type     = "CNAME"
    address  = "devy-api.fly.dev."
  }

  record {
    hostname = "www.api"
    type     = "CNAME"
    address  = "devy-api.fly.dev."
  }
}

resource "namecheap_domain_records" "field-theories" {
  domain = "fieldtheories.blog"
  mode   = "OVERWRITE"

  record {
    hostname = "@"
    type     = "CNAME"
    address  = "field-theories.fly.dev"
  }

  record {
    hostname = "www"
    type     = "CNAME"
    address  = "field-theories.fly.dev"
  }

  record {
    hostname = "images"
    type     = "CNAME"
    address  = "field-theories.fly.storage.tigris.dev"
  }
}

