const mysql = require("mysql");
const inquirer = require("inquirer");
const connection = mysql.createConnection({
    host: "localhost",

    port: 3306,

    user: "root",

    password: "Ca5aBlanca310",
    database: "bamazon_db"

});

const query = connection.query(
    "SELECT * FROM products",(err, res)=>{ 
    
    if (err) throw err;

    for (let i = 0 ; i < res.length; i++){
    console.log(
    `
    ========================
    Item ID: ${res[i].item_id}
    Product Name: ${res[i].product_name}
    Department: ${res[i].department}
    Price: $${res[i].price}
    Quantity: ${res[i].stock_quantity}
    ========================
    `);

}


    connection.end();
    })



};