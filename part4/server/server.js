// reference: https://buddy.works/guides/how-dockerize-node-application

const express = require("express")
const app = express()

const PORT = 8080

// return a string for root route
app.get("/", function (req, res) {
  res.send("hello world!")
})

app.listen(PORT, function () {
  console.log(`app listening on port ${PORT}`)
})