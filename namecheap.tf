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
    type     = "A"
    address  = "76.76.21.21"
  }

  record {
    hostname = "www"
    type     = "CNAME"
    address  = "cname.vercel-dns.com."
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
# Developer blogs in markdown. Hosted on Vercel.
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
}


