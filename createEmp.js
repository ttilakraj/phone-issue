const express = require("express");
const bodyParser = require("body-parser");
const path = require("path");
const app = express();
const port = 3000;
const db=require('./db');
//Middleware to parse URL-encoded data(from HTML forms)
app.use(bodyParser.urlencoded({ extended: true }));
//Middleware to parse JSON data(for API requsts)
app.use(bodyParser.json());
//Serve the HTML form
app.get("/", (req, res) => {
  res.sendFile(path.join(__dirname, "createEmp.html"));
});
//Handle the POST request from the form
app.post("/create-emp", (req, res) => {
  const u_data = req.body;
  db.query(
    "INSERT INTO emp_detail( emp_name, email_id, emp_phoneno, emp_salary, emp_city, emp_state, emp_country) VALUES (?,?,?,?,?,?,?)",
    [u_data.name,u_data.email,u_data.phone,u_data.salary,u_data.city,u_data.state,u_data.country],
    (err) => {
      if (err) throw err;
      console.log("Employee created");
      
    }
  );
  res.send(u_data);
});
app.listen(3000, () => {
  console.log(`Server is running on port ${port}`);
});
