# NodeCreator

### Create Node.js server only in one command - 20 Seconds

```sh
# Give sudo permissions
    chmod +x ./nodeMaker.sh
# Run 
    ./nodeMaker.sh
```

### Pre-defined :

###### express
###### cors
###### nodemon

### Shell script will remove the package.json and will write a new one, for nodemon only.

```json
// Only this will be added to the package.json, for convenience purposes.
  "scripts" : {
    "start" : "node app.js",
      "dev" : "nodemon app.js"
  },
```

## you will find an :

### app-controller.js (Routes)
### app-logic.js
### app-dao.js 

## Pre-defined functions :

```js
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
```


## You'll be granted for poll to create a client.

### you may press 'n' to cancel this stage.