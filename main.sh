set -x

export main="~/Desktop"

chmod +x ./nodeMaker.sh
chmod +x ./subModules.sh
chmod +x ./setNodemon.sh
chmod +x ./mainModule.sh
chmod +x ./createConf.sh
chmod +x ./createFrontend.sh


while true; do
read -p "Create Nodejs server ? " yn

case $yn in
[Yy]* ) ./nodeMaker.sh; exit;;
[Nn]* ) echo "Aborted"; exit;;
* ) echo "please answer yes to start or no to abort";;
esac
done