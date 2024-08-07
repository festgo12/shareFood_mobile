var createError = require('http-errors');
var express = require('express');
var expressLayouts = require('express-ejs-layouts');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
var flash = require('express-flash');
var session = require('express-session');
var passport = require('passport');
var viewHelper = require('./helpers/view_helper');
var indexRouter = require('./routes/index');
var quotesRouter = require('./routes/quotes');
var usersRouter = require('./routes/users');
var v1ApiRouter = require('./routes/apis');

var authentication = require('sequelize-authentication');
var restful        = require('sequelize-restful');
var finale = require('finale-rest')
var admin          = require('sequelize-admin');
var db = require('./models/index');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
app.use(expressLayouts);
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser('secretgoeshere'));
app.use(session({ cookie: { maxAge: 60000 },
  resave: true, 
  saveUninitialized: false}));

app.use(passport.initialize());
app.use(passport.session()); // persistent login sessions

app.use(flash());
app.use(express.static(path.join(__dirname, 'public')));

// ------------------ App-Resources Routing ---------------------- 
app.use('/', indexRouter);
app.use('/quotes', quotesRouter);
app.use('/v1/api', v1ApiRouter);

var User = require('./models/index').User;
//------ Authen Routes ---
var authRoute = require('./routes/auth.js')(app,passport);
require('./config/passport/passport.js')(passport,User);

// app.use('/users', usersRouter);
// View Helpers
app.locals.msgType2AlertMap = viewHelper.message_alert_map;


// Example, Generating Restful api from Sequelize Model.
finale.initialize({
  app: app,
  base: '/1v/api',
  sequelize: db.sequelize
});

// auto create api for Quote model
var quoteResource = finale.resource({
  model: db.Quote,
  endpoints: ['/quotes', '/quotes/:id'] // all api endpoint 
});


// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};
  // const env = process.env.NODE_ENV || 'development';
  const env = require('dotenv').load() || 'development';
  res.locals.ENV = env;
  res.locals.ENV_DEVELOPMENT = env == 'development';
  
  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
