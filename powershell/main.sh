set -x

export main="~/Desktop"

chmod +x *.sh


while true; do
read -p "Create Nodejs server ? " yn

case $yn in
[Yy]* ) ./nodeMaker.sh; exit;;
[Nn]* ) echo "Aborted"; ./rmSh.sh; exit;;
* ) echo "please answer yes to start or no to abort";;
esac
done