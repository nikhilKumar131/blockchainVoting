var express = require('express');
var path = require('path')
var app = express();

//
app.get('/', function(req,res){
    res.sendFile(path.join(__dirname,'/index.html'));
});

app.get('/voter', function(req,res){
    res.sendFile(path.join(__dirname, '/voter.html'));
});

app.get('/voting', function(req,res){
    res.sendFile(path.join(__dirname, '/voting.html'));
});

app.get('/admin', function(req,res){
    res.sendFile(path.join(__dirname, '/admin.html'));
});

app.get('/metamask', function(req,res){
    res.sendFile(path.join(__dirname,'/metamask.html'));
})
app.listen(3000);
console.log("listening to port 3000");