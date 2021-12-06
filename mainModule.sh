
FIRST_MODULE_NAME="app"
SERVER_PORT="4554"
cd server

if [[ ! -f app.js ]];
then

# Create the app.js server script.
# This module using express as base.

echo "
const 
express = require('express'),
cors = require('cors');

const ${FIRST_MODULE_NAME}Controller = require('./controllers/${FIRST_MODULE_NAME}-controller')

const server = express()

const port = process.env.PORT || ${SERVER_PORT}

server.use(express.static('public'));

server.use(cors({ origin : '*'}));

server.use(express.json());

server.use('${FIRST_MODULE_NAME}', ${FIRST_MODULE_NAME}Controller);

server.listen(port, () => console.log('Server is running at port ' + port));
" >> app.js

fi

cd ..

# Giving sudo permissions to subModules.sh


chmod +x subModules.sh

# Calling subModules.sh to build the logic and dao layers script

./subModules.sh