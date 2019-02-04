while $true; do
    if [ -f ./msg.txt ]
    then
        cat ./msg.txt
        rm ./msg.txt
    else
        sleep 1
    fi
done
