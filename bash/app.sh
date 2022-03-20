

ng new client

cd client/src/app

mkdir components
mkdir services
mkdir modules
mkdir interceptors
mkdir models
mkdir pipes


mv app-routing.module.ts modules
mv app.module.ts modules

rm app.component.css
rm app.component.html
rm app.component.spec.ts
rm app.component.ts

ng g c components/layout -m modules/app
ng g c components/header -m modules/app
ng g c components/menu -m modules/app
ng g c components/login -m modules/app
ng g c components/footer -m modules/app


ng g s services/Users 
ng g s services/state 

cd ..
cd ..
cd ..

chmod +x ./fixAngular.sh

./fixAngular.sh
