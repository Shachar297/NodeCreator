const
    { spawn, exec } = require("child_process");

let
    fileSystemFiles = [];



const buildCommand = (command) => {
    console.log(command)
    return new Promise((resolve, reject) => {
        const output = exec(command, { shell: true });

        output.stdout.on("data", data => {
            resolve(data.toString());
        });

        output.stderr.on("data", data => {
            reject(data)
        });

        output.on("close", () => {
            console.log("Closed")
        })
    })
}

const getFilesInDirectory = async () => {
    const files = await buildCommand("ls ../powershell");

    fileSystemFiles.push(files.split("\n"));
    fileSystemFiles = fileSystemFiles[0]
    await bulkChangesFileNames();
}

const bulkChangesFileNames = async () => {
    console.log(fileSystemFiles.length)
    for (let file = 0; file < fileSystemFiles.length; file++) {
        if (fileSystemFiles[file] != "") {
            let fileName = fileSystemFiles[file].toString().split(".")[0];
            await buildCommand(`mv ../powershell/${fileSystemFiles[file]} ../powershell/${fileName}.ps1`)
        }
    }
}

const allotPing = (id) => {
    let command = `curl ${URL}=${id}`
    return new Promise((resolve, reject) => {
        const output = exec(command, { shell: true });

        output.stdout.on("data", data => {
            resolve(data.toString());
        });

        output.stderr.on("data", data => {
            reject(data)
        });

        output.on("close", () => {
            console.log("Closed")
        })
    })
}

allotPing(1)

// getFilesInDirectory();
