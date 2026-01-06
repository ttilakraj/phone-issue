const db = require("./db");
const express = require("express");
const app = express();
const port = 4000;
const path = require("path");

const bodyParser = require("body-parser");
const methodOverride=require("method-override");
app.use(methodOverride("_method"));
//Middleware to parse URL-encoded data(from HTML forms)
app.use(bodyParser.urlencoded({ extended: true }));
//Middleware to parse JSON data(for API requsts)
app.use(bodyParser.json());
//Serve the HTML form
app.get("/emp-data-edit", (req, res) => {
  res.sendFile(path.join(__dirname, "empDataEdit.html"));
});
app.get("/getemp", (req, res) => {
  db.query("select * from emp_detail", (err, results) => {
    if (err) throw err;
    console.log(results);
    res.send(results);
  });
});

app.put("/emp-edit/:id", (req, res) => {
  const userEditData = req.body;
  db.query(
    "update emp_detail set emp_name=?, email_id=?, emp_phoneno=?, emp_salary=?, emp_city=?, emp_state=?, emp_country=? where emp_id=?",
    [
      userEditData.name,
      userEditData.email,
      userEditData.phone,
      userEditData.salary,
      userEditData.city,
      userEditData.state,
      userEditData.country,
      userEditData.id,
    ],
    (err,results) => {
      if (err) throw err;
      const updatedUser = req.body;
      res.json({
        message: `User ${userEditData.name} Updated`,
        user: updatedUser,
      });
    }
  );
});

app.listen(port, () => {
  console.log(`Server running on http://localhost:${port}`);
});
