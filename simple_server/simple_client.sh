while $true; do
    read -r line
    echo $line > ./tmp.txt
    mv ./tmp.txt ./msg.txt
done
