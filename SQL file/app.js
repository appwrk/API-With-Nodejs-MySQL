const express = require('express'),
  app = express(),
  bodyParser = require('body-parser');
port = process.env.PORT || 5000;
connection = require('./app/model/db.js');

app.use(function(req, res, next) {
    res.header("Access-Control-Allow-Origin", "*");
    res.header("Access-Control-Allow-Headers", "Origin, X-Requested-With, Content-Type, Accept");
    next();
  });

  app.listen(port);

  console.log('API server started on: ' + port);
  
  app.use(bodyParser.urlencoded({ extended: true }));
  app.use(bodyParser.json());



var routes = require('./app/routes/approutes'); //importing route
routes(app); //register the route