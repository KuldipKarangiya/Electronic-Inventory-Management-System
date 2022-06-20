const express =require("express");
const yash=express();
require("./db/conn");

const port=8000 ||process.env.PORT;

yash.get("/",(req,res) =>{
res.send("hello yash kanjiya");
});

yash.listen(port,() =>{
    console.log(`server is running at port ${port}`)
});