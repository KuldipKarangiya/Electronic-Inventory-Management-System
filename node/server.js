const http = require("http");

const server= http.createServer( (req,res) =>{
res.end("hello from server :: said by own server");
});

server.listen(8000,"127.0.0.1",() => {
console.log("Listeing to port 8000");
});