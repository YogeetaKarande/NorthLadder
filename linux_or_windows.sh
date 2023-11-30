REMOTE_SERVER_IP="192.168.29.2"
PORT="22"

echo -n | nc -w1 "$REMOTE_SERVER_IP" "$PORT"

if [ $? -eq 0 ]; then
    echo "The remote server is likely running Linux."
else
    echo "The remote server is not responding as expected. It may be Windows or the specified port is closed."
fi


