const express=require('express');
const app=express();
const port=4000;
app.use(express.json());

app.get('/users',(req,res)=>{
    res.json({
        message:'User List Returning'
    });
});


app.post('/users',(req,res)=>{
    const newUser=req.body;
    res.json({
        message:'User Created',user:newUser
    });
});
app.put('/users/:id',(req,res)=>{
    const userId=req.params.id;
    const updatedUser=req.body;
    res.json({
        message:`User ${userId} Updated`,user:updatedUser
    });
});
app.delete('/users/:id',(req,res)=>{
    const userId=req.params.id;
    res.json({
        message:`User ${userId} Deleted`
    });
});
app.listen(port,()=>{
    console.log(`Server running on http://localhost:${port}`);
    
});