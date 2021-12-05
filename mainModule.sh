
FIRST_MODULE_NAME="app"
SERVER_PORT="4554"
cd server

if [[ ! -f app.js ]];
then



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

chmod +x subModules.sh

./subModules.sh