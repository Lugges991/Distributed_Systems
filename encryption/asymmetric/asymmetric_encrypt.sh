# usage bash asymmetric_encrypt.sh private_key_file file_to_encrypt file_to_decrypt
if [ ! -f $1 ]
then
    echo "---Generating public/private key pair---"
    openssl genrsa -out $1 2048
    openssl rsa -in $1 -out $1.pem -outform PEM -pubout
fi

echo "---Encrypting the file with public key---"
openssl rsautl -encrypt -inkey $1.pem -pubin -in $2 -out $3
cat $3

echo "---Decrypting with private key---"
openssl rsautl -decrypt -inkey $1 -in $3
