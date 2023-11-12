# This script pulls my authentication info from 1Password and runs terraform apply

export NAMECHEAP_USER_NAME=$(op read op://private/namecheap/username)
export NAMECHEAP_API_USER=$(op read op://private/namecheap/username)
export NAMECHEAP_API_KEY=$(op read op://private/namecheap/apikey)

terraform apply
