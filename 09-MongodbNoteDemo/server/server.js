const express = require('express')
const mongoose = require('mongoose')

// Import schema for database
var Data = require("./noteDemoSchema")

// Network variables
var urlListen = "localhost"
var portListen = 8081
var config = {
    url: "mongodb://localhost:27017",
    user: "root",
    pwd: "root",
    dbName: "sandbox",
}

// Initiate the app
var app = express()

// Check server is running
var server = app.listen(portListen, urlListen, () => {
    console.log("Server is running")
})

// Make connection to MongoDB
mongoose.connect(config.url, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
    user: config.user,
    pass: config.pwd,
    dbName: config.dbName
})

// Handle connection
mongoose.connection.once("open", () => {

    // Success to connect
    console.log("Connected to DB")

}).on("error", (error) => {

    // Failed to connect
    console.log("Failed to connect " + error)

})

// Create a note (POST)
app.post("/create", (req, res) => {

    // Create new Data
    var note = new Data ({
        title: req.get("title"),
        date: req.get("date"),
        note: req.get("note"),
    })

    // Save note note and check completion
    note.save().then(() => {
        if (note.isNew == false) {
            // Success
            console.log("Saved data")
            res.send("Saved data")
        } else {
            // Fail
            console.log("Failed to save data")
        }
    })
})

// Fetch all notes (GET)
app.get('/fetch', (req, res) => {
    // Access model and find documents
    Data.find({}).then((dbItems) => {

        res.send(dbItems)
    })

})

// Delete a note (POST)
app.post('/delete', (req, res) => {
    // Access model and delete document with certain id
    Data.findOneAndRemove({
        _id: req.get("id")
    }, (err) => {
        console.log("Failed to delete " + err)
    })

    res.send("Deleted data")
})

// Update a note (POST)
app.post('/update', (req, res) => {

    Data.findOneAndUpdate({
        _id: req.get("id")
    }, {
        title: req.get("title"),
        date: req.get("date"),
        note: req.get("note"),
    }, (err) => {
        console.log("Failed to update " + err)
    })

    res.send("Updated data")
})


