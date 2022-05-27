echo "root:$ROOTPASS" | chpasswd
echo "ctf:$CTFPASS" | chpasswd
unset ROOTPASS
unset CTFPASS

service ssh start

echo '<FLAG>' > /flag
chmod 644 /flag

/usr/bin/top -b