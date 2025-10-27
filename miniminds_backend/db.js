const mysql = require('mysql');
const dotenv = require('dotenv');
dotenv.config();
const HOST = process.env.PRODUCTION ? process.env.MYSQL_ADDON_HOST : 'localhost';
const USER = process.env.PRODUCTION ? process.env.MYSQL_ADDON_USER : 'root';
const PASSWORD = process.env.PRODUCTION ? process.env.MYSQL_ADDON_PASSWORD : '';
const DATABASE = process.env.PRODUCTION ? process.env.MYSQL_ADDON_DB : 'miniminds';

const mysqlConnection = mysql.createConnection({
    host: HOST,
    user: USER,
    password: PASSWORD,
    database: DATABASE  ,
    multipleStatements: true
});

mysqlConnection.connect( function(err){
    if(err){
        console.error(err);
        return;
    } else {
        console.log('Base de datos conectada!');
    }
})

module.exports = mysqlConnection;