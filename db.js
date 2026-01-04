const mysql=require('mysql');
const connection=mysql.createConnection({
    host:"localhost",
    user:"root",
    password:"",
    database:"employee2"
});

connection.connect((err)=>{
    if(err){
        console.log("Database not connected");
        return;
    }
});
module.exports=connection;