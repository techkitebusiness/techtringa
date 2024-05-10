const mysql = require('mysql2/promise');

require('dotenv').config();
// console.log("process.env.DATABASE_HOST",process.env.DATABASE_HOST);
// console.log("process.env.DATABASE_USER",process.env.DATABASE_USER);
// console.log("process.env.DATABASE_PASSWORD",process.env.DATABASE_PASSWORD);
// console.log("process.env.DATABASE_NAME",process.env.DATABASE_NAME);
const connection = mysql.createPool({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USER,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_NAME
});

export default connection;