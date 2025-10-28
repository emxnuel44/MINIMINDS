const { Router } = require('express');
const router = Router();
const mysqlConnection= require('../db');

router.get('/', (req, res)=>{
    mysqlConnection.query('SELECT * FROM categorias', (err, rows, fields)=>{
        if(!err) {
            res.json(rows);
        }else {
            console.log(err);
        }
    });
});
 

module.exports = router;