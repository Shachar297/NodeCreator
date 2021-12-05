
const appDao = require('../dao/app-dao');

async function appMain() {
    const example = await appDao.appMain();
    return example
}

module.exports = {
    appMain
}

