const express = require("express");
const bodyParser = require("body-parser");
const path = require("path");
const app = express();
const port = 3000;
//Middleware to parse URL-encoded data(from HTML forms)
app.use(bodyParser.urlencoded({ extended: true }));
//Middleware to parse JSON data(for API requsts)
app.use(bodyParser.json());
//Serve the HTML form
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "index.html"));
});

app.listen(3000, () => {
  console.log(`Server is running on port ${port}`);
});
