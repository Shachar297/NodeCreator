
const 
express = require('express'),
cors = require('cors');

const appController = require('./controllers/app-controller')

const server = express()

const port = process.env.PORT || 4554

server.use(express.static('public'));

server.use(cors({ origin : '*'}));

server.use(express.json());

server.use('app', appController);

server.listen(port, () => console.log('Server is running at port ' + port));

