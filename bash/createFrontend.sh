read -p "Choose a frontend framework. > 1. Vanilla JS.    _     2. Angular." framework

if [[ $framework == 1 ]]
then 


mkdir client
cd client
touch index.html
touch script.js
touch styles.css

echo "------- Vanilla JS client was created ----------"

fi

if [[ $framework == 2 ]]
then

echo " --- Select Y\N to Create or not Angular With route modules (Recommended)."
chmod +x app.sh
./app.sh
echo  " ------- Angular Framework was created ----------"

echo "----- Angular starts now at port 4200 -----"

cd client/src/app

ng s -o

fi
