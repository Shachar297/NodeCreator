cd server

# Re-build the package.json, scripts for nodemon added

rm package.json

echo '
{
  "name" : "app",
  "dependencies": {
    "cors": "^2.8.5",
    "express": "^4.17.1"
  },
  "scripts" : {
    "start" : "node app.js",
      "dev" : "nodemon app.js"
  },

  "devDependencies": {
    "nodemon": "^2.0.15"
  }
}
' >> package.json