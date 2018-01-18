var inquirer = require("inquirer");
var mysql = require("mysql");

var connection = mysql.createConnection({
  host: "localhost",
  port: 3306,

  // Your username
  user: "root",

  // Your password
  password: "something",
  database: "bamazon_db"
});


function checkInventory () {

	inquirer.prompt([
    // Here we create a basic text prompt.
    {
      type: "input",
      message: "What is the product ID of the item you would like to purchase?",
      name: "productID"
    },
    {
      type: "input",
      message: "How many units would you like to buy?",
      name: "units",
      validate: function (input) {
      	if (isNaN(input) === true) {
      		return false || "Input numbers only, please"
      	}

      	else if (input < 1) {
      		return false || "You must purchase at least one unit."
      	}

      	else {
      		return true;
      	}
      }
    },

  ])
  .then(function(answer) {
	  	console.log("These items are available for sale.")
	  	readData(answer.productID, answer.units);

  });

}

function readData (ID, units) {
  connection.query("SELECT * FROM products WHERE item_id = ?", ID, function(err, res) {
    if (err) throw err;
  
    if (res[0].stock_quantity > units) {
    	console.log("The total cost of your purchase is: " + res[0].price*units);
    	updateProduct(ID, units, res[0].stock_quantity);

    }

    else {
    	console.log("Not enough of this item in stock!");
    	connection.end();

    }

  });
}

function updateProduct(ID, units, quantity) {
  console.log("Performing sale...\n");
  var query = connection.query(
    "UPDATE products SET ? WHERE ?",
    [
      {
        stock_quantity: quantity - units
      },
      {
        item_id: ID
      }
    ],
    function(err, res) {
     	console.log("Your transaction is complete!");
    })

    connection.end();
};

function queryAllProducts() {
  connection.query("SELECT * FROM products", function(err, res) {
    if (err) throw err;
     console.log("Here are the items available for purchase.");
  	for (var i = 0; i < res.length; i++) {
  		console.log(

  			`Item ID: ${res[i].item_id} 
  			Product Name: ${res[i].product_name} 
  			Department Name: ${res[i].department_name} 
  			Price: ${res[i].price} 
  			Amount in Stock: ${res[i].stock_quantity}`)
      console.log("-------------------------------------------------------");
  	}
  });
}

queryAllProducts();
var check = setTimeout(checkInventory,3000);

