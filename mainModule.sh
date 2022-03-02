
source ./declareVars.sh
cd server

if [[ ! -f app.js ]];
then

# Create the app.js server script.
# This module using express as base.

echo "
const 
express = require('express'),
cors = require('cors');

const ${MODULE_NAME}Controller = require('./controllers/${MODULE_NAME}-controller')

const server = express()

const port = process.env.PORT || ${PORT}

server.use(express.static('public'));

server.use(cors({ origin : '*'}));

server.use(express.json());

server.use('/${MODULE_NAME}', ${MODULE_NAME}Controller);

server.listen(port, () => console.log('Server is running at port ' + port));
" >> app.js

fi

cd ..

# Giving sudo permissions to subModules.sh




# Calling subModules.sh to build the logic and dao layers script

./subModules.sh