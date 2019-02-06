# usage digital_signature.sh input_file private_key

cat $1 | openssl dgst -sha256 > $1.hash
openssl rsautl -sign -inkey $2 -in $1.hash -out $1.sig

