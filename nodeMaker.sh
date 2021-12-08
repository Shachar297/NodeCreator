set -x

FIRST_MODULE_NAME="app"
SERVER_PORT="3443"

if [[ ! -d ./server ]];
then
mkdir server
fi


## Create the hierarchy for the nodejs server.

cd server

# Create 3 layers modules
mkdir controllers # (routes)
mkdir dao
mkdir logic

# Set up requirements and package dependencies.

npm i express
npm i cors
npm i --save-dev nodemon
cd ..

# Giving sudo permissions to MainModles

chmod +x ./mainModule.sh

# Calling the MainModles shell script to build the app.js

chmod +x createConf.sh
./createConf.sh

./mainModule.sh

chmod +x ./createFrontend.sh

while true; do
read -p "Create Frontend ? " yn

case $yn in
[Yy]* ) ./createFrontend.sh; exit;;
[Nn]* ) echo $yn; exit;;
* ) echo "please answer yes on no";;
esac
done
