const mysql = require("mysql");
const inquirer = require("inquirer");

const welcome = () => {




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
        Department: ${res[i].department_name}
        Price: $${res[i].price}
        Quantity: ${res[i].stock_quantity}
        ========================
        `);

    }

    
        connection.end();
        })



    };















welcome();

inquirer.prompt([


{

type: "input",
message: `
Welcome to Bamazon. Scroll up to browse our inventory;
Please enter ID of product you would like to purchase`,
name: "idInput"

}, 


{

    type: "input",
    message: `How much would you like to purchase?`,
    name: "quantityInput"
    
    }




]).then(answers => {


console.log(


    
`idInput: ${answers.idInput}
quantityInput: ${answers.quantityInput}
    
`  
);


const connection = mysql.createConnection({

host: "localhost",
port: 3306,
user: "root",
password: "Ca5aBlanca310",
database: "bamazon_db"


});


connection.connect (err => {

if (err) throw err;

console.log(`connected as id ${connection.threadId}`);
  



})



const query = connection.query(
"SELECT * FROM products WHERE ?", {item_id: `${answers.idInput}`} ,(err, res)=>{ 

if (err) throw err;
console.log(
`
========================
Item ID: ${res[0].item_id}
Product Name: ${res[0].product_name}
Department: ${res[0].department_name}
Price: $${res[0].price}
Quantity: ${res[0].stock_quantity}
========================
`);


if ( answers.quantityInput <=  res[0].stock_quantity){















    const connection = mysql.createConnection({

        host: "localhost",
        port: 3306,
        user: "root",
        password: "Ca5aBlanca310",
        database: "bamazon_db"
        
        
        });
        
        
        connection.connect (err => {
        
        if (err) throw err;
        
        console.log(`connected as id ${connection.threadId}`);
          
        
        
        
        })
        
        
        
        connection.query(
        "UPDATE products SET ? WHERE ?", [{stock_quantity: res[0].stock_quantity - answers.quantityInput}, {item_id: answers.idInput}],(err, res)=>{ 
        
        if (err) throw err;
        console.log(
        `
        ========================
        Item ID: ${res[0].item_id}
        Product Name: ${res[0].product_name}
        Department: ${res[0].department_name}
        Price: $${res[0].price}
        Quantity: ${res[0].stock_quantity}
        ========================
        `);



       
        
        
        
        
        
        
        connection.end();
        })

































































































    console.log("Thank you! The purchase has been finalized. Your total comes to $"+ (res[0].price * answers.quantityInput));




}

else{

console.log("Your requested quantity exceeds our current stock")

}



connection.end();
})














}    
    )