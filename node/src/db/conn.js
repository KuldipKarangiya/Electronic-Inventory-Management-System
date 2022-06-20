const mongoose = require("mongoose");

mongoose.connect("mongodb://localhost:27017/kannn",{
    useNewUrlParser:true,
    userUnifiedTopology:true,
    userCreateIndex:true
}).then(()=> {
    console.log("Connect the database");
}).catch((e)=>{
    console.log("database not connect");
})