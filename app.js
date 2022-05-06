//1 REQUIRE PACKAGES
const express = require('express');
const morgan = require('morgan');
const cors = require('cors');


//1.1 REQUIRE 
const globalErrHandler = require('./utils/errHandler');

const app = express();

//2 REQUIRE ROUTES
const userRoutes = require('./routes/userRoutes');

//3 APP.USE MIDDLEWARE


app.use(express.json());
app.use(cors());
app.options('*', cors());



//APP.USE ROUTES DECLARATION MIDDLEWARE
app.use('/api/v1/users',userRoutes);

app.use(globalErrHandler)
//4 SERVER
module.exports = app;
