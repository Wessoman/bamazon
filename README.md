# bamazon
Bamazon! Bam out the deals today!!

Release History
.01-.10 Engine testing and conceptualization
.11 Initial Readme
.12-15 SQL Revisions
.16-17 Engine 1 Testing, Package Updated
.18-20 Test Code for Manager module
.21-22 Supervisor module prototype
.23 MVP Achieved
.24 New SQL Update
.25 Example Testing 1
.27 Code Cleanup
.32 Final Version

## Getting Started

- Clone repo.
- Run command in Terminal or Gitbash 'npm install'
- Run command depending which mode you would like to be on:
    * Customer - 'npm run customer'
    * Manager - 'npm run manager'
    * Supervisor - 'npm run exective'
- Run 'ctrl + c' to exit each mode

### What Each JavaScript Does

1. `BamazonCustomer.js`

    * Prints the products in the store.

    * Prompts customer which product they would like to purchase by ID number.

    * Asks for the quantity.

      * If there is a sufficient amount of the product in stock, it will return the total for that purchase.
      * However, if there is not enough of the product in stock, it will tell the user that there isn't enough of the product.
      * If the purchase goes through, it updates the stock quantity to reflect the purchase.
      * It will also update the product sales in the department table.

      In the Examples Folder, Take1.PNG through Take4.PNG show the process of buying products in the Bash window. Note that I also included SQLBeforeTake2.PNG and SQLBeforeTake4.PNG, as well as SQLAfterTake2.PNG and SQLAfterTake4.PNG to show the SQL database before and after purchases are made. Note the total inventory being reduced.

-----------------------

2. `BamazonManager.js`

    * Starts with a menu:
        * View Products for Sale
        * View Low Inventory
        * Add to Inventory
        * Add New Product
        * End Session

    * If the manager selects `View Products for Sale`, it lists all of the products in the store including all of their details.

    * If the manager selects `View Low Inventory`, it'll list all the products with less than five items in its StockQuantity column.

    * If the manager selects `Add to Inventory`, it allows the manager to select a product and add inventory.

    * If the manager selects `Add New Product`, it allows the manager to add a new product to the store.

    * If the manager selects `End Session`, it ends the session and doesn't go back to the menu.

    Note that in the Examples folder, Take5.PNG through Take10.PNG are illustrate the process of the Bamazon Manager. Take7.PNG is meant to show products with low inventory but since I don't have any low inventory product at the time nothing is shown. Take8.PNG shows adding more inventory to a product, in this case I added more RoboVacs. In SQLBeforeTake8.PNG and SQLAfterTake8.PNG, you can see in the bamazon_db the eight robovacs added to the inventory. Take9.PNG shows adding a new product, Jalapeno Raspberry Jam. Take10.PNG shows the new product added to the id list, and we can see the SQLBeforeTake10.PNG and SQLAfterTake10.PNG to show the new jam being added to the list.
-----------------------

3. `BamazonSupervisor.js`

    * Starts with a menu:
        * View Product Sales by Department
        * Create New Department
        * End Session

    * If the manager selects `View Product Sales by Department`, it lists the Department Sales and calculates the total sales from the overhead cost and product sales.

    * If the manager selects `Create New Department`, it allows the manager to create a new department and input current overhead costs and product sales. If there are none, by default it will set at 0.

    * If the manager selects `End Session`, it ends the session and doesn't go back to the menu.

    In the Examples, Take11.PNG and Take12.PNG show the application viewing the sales, and then adding a new department. You can see the new department added to bamazon_db in SQLAfterTake12.PNG.
    