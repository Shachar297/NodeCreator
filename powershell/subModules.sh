
cd server/controllers
source ./declareVars.sh


# Building app-controller.js

echo "
    const express = require('express'),
    ${MODULE_NAME}Logic = require('../logic/${MODULE_NAME}-logic'),
    router = express.Router()

    router.get('/' , async (req, res, next) => {
        try {
            res.json(await ${MODULE_NAME}Logic.${MODULE_NAME}Main());
        }catch(e) {
            return next(e);
        }
    })

    router.get('/:id/' , async (req, res, next) => {
        const userId = req.params.id;
        try {
            res.json(await ${MODULE_NAME}Logic.${MODULE_NAME}Main());
        }catch(e) {
            return next(e);
        }
    })


    router.post('/' , async (req, res, next) => {
        const body = req.body;
        try {
            res.json(await ${MODULE_NAME}Logic.${MODULE_NAME}Main(body = {}));
        }catch(e) {
            return next(e);
        }
    })


    module.exports = router;

" >> ${MODULE_NAME}-controller.js
cd ../logic

# Building app-logic.js

echo "
const ${MODULE_NAME}Dao = require('../dao/${MODULE_NAME}-dao');

async function ${MODULE_NAME}Main() {
    const example = await ${MODULE_NAME}Dao.${MODULE_NAME}Main();
    return example
}

module.exports = {
    ${MODULE_NAME}Main
}
" >> ${MODULE_NAME}-logic.js

cd ../dao

# Building app-dao.js

echo "
    async function ${MODULE_NAME}Main() {
        return 'completed'
    }

    module.exports = {
        ${MODULE_NAME}Main
    }
" >> ${MODULE_NAME}-dao.js

cd ..
cd ..

# Giving sudo permissions to setNodemon.sh


# Calling setNodemon.sh to build the package.json again 
# It's only necessary for nodemon

./setNodemon.sh

cd server

# Start app.js => nodemon
# Ctrl + C to exit
#nodemon