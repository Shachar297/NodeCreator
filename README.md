# NodeCreator

### Create Node.js server only in one command - 20 Seconds


# Declare your Module name and your desired port for the Node app.

```sh
export MODULE_NAME="your_module_name"
export PORT=5555
```


```sh
# Give sudo permissions
    chmod +x ./main.sh
# Run
    ./main.sh
```

### Pre-defined :

###### express

###### cors

###### nodemon

### Shell script will remove the package.json and will write a new one, for nodemon only.

```js
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
router.get("/", async (req, res, next) => {
  try {
    res.json(await appLogic.appMain());
  } catch (e) {
    return next(e);
  }
});

router.get("/:id/", async (req, res, next) => {
  const userId = req.params.id;
  try {
    res.json(await appLogic.appMain());
  } catch (e) {
    return next(e);
  }
});
```

## You'll be granted for poll to create a client.

### you may press 'n' to cancel this stage.

#### If you do want to add a client package, Select which framework you want to be set up for you.

##### [1. Vanilla JS, 2. Angular].

##### The installation of angular will create a layout and layout boxing (header, aside and footer). With pre defined CSS for layout and styles.css.

<img src="images/Untitled 3.png" width="400" height="450">

```html
<!-- Old -->
<app-root></app-root>
<!-- New -->
<app-layout></app-layout>
```

---

## Start node server

```sh
    cd server
    nodemon
```
