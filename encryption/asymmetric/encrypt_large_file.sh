# usage bash encrypt_large_file.sh receipient_public_key_file large_file

# creating a new temporary key file
openssl rand -hex 64 > temp.key
# encrypting the large file with the temporary key
openssl aes256 -in $2 -out $2.enc -pass file:temp.key
# encrypt temporary key with recipients public key
openssl rsautl -encrypt -inkey $1 -pubin -in temp.key -out temp.key.enc
