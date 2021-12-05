
    const express = require('express'),
    appLogic = require('../logic/app-logic'),
    router = express.Router()

    router.get('/' , async (req, res, next) => {
        try {
            res.json(appLogic.appMain());
        }catch(e) {
            return next(e);
        }
    })

    router.get('/:id/' , async (req, res, next) => {
        const userId = req.params.id;
        try {
            res.json(appLogic.appMain());
        }catch(e) {
            return next(e);
        }
    })


    router.post('/' , async (req, res, next) => {
        const body = req.body;
        try {
            res.json(appLogic.appMain(body = {}));
        }catch(e) {
            return next(e);
        }
    })


    module.exports = router;


