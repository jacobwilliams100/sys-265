#secure-ssh.sh
#author Jacob Williams
#creates a new ssh user using $1 parameter
#adds a public key fro the local repo or curled from the remote repo
#removes roots ability to ssh in
echo "ALL YOUR CODE GOES HERE"

username=$1

useradd -m -d /home/$username  -s /bin/bash $username

mkdir /home/$username/.ssh

#mkdir /home/$username/.ssh/authorized_keys

cp /home/jacob/SYS-265/public-keys/id_rsa.pub /home/$username/.ssh/authorized_keys

chmod 700 /home/$username/.ssh

chmod 600 /home/$username/.ssh/authorized_keys

chown -R $username:$username /home/$username/.ssh

echo "DONE"
