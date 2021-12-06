
cd server/controllers

FIRST_MODULE_NAME="app"

# Building app-controller.js

echo "
    const express = require('express'),
    ${FIRST_MODULE_NAME}Logic = require('../logic/${FIRST_MODULE_NAME}-logic'),
    router = express.Router()

    router.get('/' , async (req, res, next) => {
        try {
            res.json(${FIRST_MODULE_NAME}Logic.${FIRST_MODULE_NAME}Main());
        }catch(e) {
            return next(e);
        }
    })

    router.get('/:id/' , async (req, res, next) => {
        const userId = req.params.id;
        try {
            res.json(${FIRST_MODULE_NAME}Logic.${FIRST_MODULE_NAME}Main());
        }catch(e) {
            return next(e);
        }
    })


    router.post('/' , async (req, res, next) => {
        const body = req.body;
        try {
            res.json(${FIRST_MODULE_NAME}Logic.${FIRST_MODULE_NAME}Main(body = {}));
        }catch(e) {
            return next(e);
        }
    })


    module.exports = router;

" >> ${FIRST_MODULE_NAME}-controller.js
cd ../logic

# Building app-logic.js

echo "
const ${FIRST_MODULE_NAME}Dao = require('../dao/${FIRST_MODULE_NAME}-dao');

async function ${FIRST_MODULE_NAME}Main() {
    const example = await ${FIRST_MODULE_NAME}Dao.${FIRST_MODULE_NAME}Main();
    return example
}

module.exports = {
    ${FIRST_MODULE_NAME}Main
}
" >> ${FIRST_MODULE_NAME}-logic.js

cd ../dao

# Building app-dao.js

echo "
    async function ${FIRST_MODULE_NAME}Main() {
        return 'completed'
    }

    module.exports = {
        ${FIRST_MODULE_NAME}Main
    }
" >> ${FIRST_MODULE_NAME}-dao.js

cd ..
cd ..

# Giving sudo permissions to setNodemon.sh

chmod +x ./setNodemon.sh

# Calling setNodemon.sh to build the package.json again 
# It's only necessary for nodemon

./setNodemon.sh

cd server

# Start app.js => nodemon
# Ctrl + C to exit
nodemon