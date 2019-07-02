//dependencies
var mysql = require("mysql");
var inquirer = require("inquirer");
//var password = require("./password.js");
var Table = require("cli-table");

//database connection info
var connection = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "root",
    password: "Child123!",
    database: "bamazon_db"
});

//connects to database
connection.connect(function(err) {
    if (err) throw err;
});

//initializes app
initialize();

// ========== FUNCTIONS =========== //