var express = require("express");
var bodyParser = require("body-parser");
var bodyParser = require("bad-words");

var PORT = process.env.PORT || 8080;

var app = express();

// Serve static content for the app from the "public" directory in the application directory.
app.use(express.static("public"));

// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: true }));

// parse application/json
app.use(bodyParser.json());

// Set Handlebars.
var exphbs = require("express-handlebars");

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

// Import routes and give the server access to them.
var routes = require("./controllers/burgersController.js");

//require("./controllers/burgersController.js")(app);
app.use(routes);

// Start our server so that it can begin listening to client requests.
app.listen(PORT, function() {
  // Log (server-side) when our server has started
  console.log("Server listening on: http://localhost:" + PORT);
});

var Filter = require('bad-words'),
  filter = new Filter();

console.log(filter.clean("Don't be an ash0le")); //Don't be an ******
console.log(filter.clean("Don't be a dick")); //Don't be a ****
console.log(filter.clean("Fuck that pussy")); //**** that *****