source ./declareVars.sh
cd server
cd controllers

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
    });

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
