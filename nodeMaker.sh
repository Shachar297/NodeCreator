set -x

FIRST_MODULE_NAME="app"
SERVER_PORT="3443"

if [[ ! -d ./server ]];
then
mkdir server
fi

cd server

mkdir controllers
mkdir dao
mkdir logic

npm i express
npm i cors
npm i --save-dev nodemon
cd ..

chmod +x ./mainModule.sh

./mainModule.sh

