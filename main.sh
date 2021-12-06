set -x

chmod +x ./nodeMaker.sh



while true; do
read -p "Create Nodejs server ? " yn

case $yn in
[Yy]* ) ./nodeMaker.sh; exit;;
[Nn]* ) echo "Aborted"; exit;;
* ) echo "please answer yes to start or no to abort";;
esac
done