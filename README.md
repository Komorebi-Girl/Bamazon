# Bamazon
Bamazon is a basic Node Application that works along with MySQL to simulate an Amazon storefront. The user can find out which items are for sale and read through important product details like the item's price, amount currently in stock and the department the item is listed in. In addition to reading through product info, the user can search for and purchase particular items through using the relevant product ID. 

## Getting Started
As there is a Package.JSON included in the repo, the user should only need to copy/clone the repo, do a npm install and run the bamazonCustomer.js file. 

## How it Works 
As soon as the file is run, a product list will appear detailing all of the items up for sale. The user can then search through for an item 
they would like to buy. After three seconds, the application will ask the user for the ID of the product they want to purchase and the number of units they desire. If these two entries are valid, Bamazon will notify the user of the total cost and then proceed with the transaction. 

Just in case the user makes a mistake inputting the relevant information, the app performs a small amount of validation. It warns the user if they have typed in a string or a negative number for the number of units they would like to buy. Bamazon also will stop the transaction if the user has tried to buy more units than are available. 
