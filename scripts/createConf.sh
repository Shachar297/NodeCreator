cd server

mkdir config
 
 cd config

 echo "
 module.exports = {
     username : '',
     password : '',
     token : '',
     baseUrl : 'http://domain/rest/api/',
     headers : {
         'Content-Type': 'application/json',
         'Authorization' : 'Bearer' token,
     },
     secret : 'This is the secret string for crypto encrypting npmicrypto npmijsonwebtoken'
 }
 " >> config.js
