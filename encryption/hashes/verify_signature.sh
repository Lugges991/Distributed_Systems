# usage verify_signature.sh signature public_key

openssl rsautl -inkey $2 -pubin -in $1
