# usage: bash symmetric_encrypt.sh input_file_name output_file_name

echo "Encrypting the message: "
cat $1
openssl aes256 -in $1 -out $2
cat $2
echo "\nDecrypting:"
openssl aes256 -d -in $2
