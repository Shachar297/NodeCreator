cd server

cd controllers

FIRST_MODULE_NAME="confluence"
echo "
    const express = require('express'),
    ${FIRST_MODULE_NAME}Logic = require('../logic/${FIRST_MODULE_NAME}-logic'),
    router = express.Router()
    router.get('/' , async (req, res, next) => {
        try {
            res.json(await ${FIRST_MODULE_NAME}Logic.${FIRST_MODULE_NAME}Main());
        }catch(e) {
            return next(e);
        }
    })
    router.get('/:id/' , async (req, res, next) => {
        const userId = req.params.id;
        try {
            res.json(await ${FIRST_MODULE_NAME}Logic.${FIRST_MODULE_NAME}Main());
        }catch(e) {
            return next(e);
        }
    });

    router.post('/' , async (req, res, next) => {
        const body = req.body;
        try {
            res.json(await ${FIRST_MODULE_NAME}Logic.${FIRST_MODULE_NAME}Main(body = {}));
        }catch(e) {
            return next(e);
        }
    })
    module.exports = router;
" >> ${FIRST_MODULE_NAME}-controller.js
cd ../logic

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
