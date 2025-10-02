const { Router } = require('express');
const router = Router();
const mysqlConnection = require('../db');

router.post('/login', (req, res) => {
    const { correo, contraseña } = req.body;
    mysqlConnection.query('SELECT * FROM usuarios WHERE correo = ? AND contraseña = ?', [correo, contraseña], (err, results) => {
        if (err) {
            return res.status(500).json({ success: false, message: 'Error en la consulta' });
        }
        if (results.length > 0) {
            // Usuario encontrado
            return res.status(200).json({ success: true, user: results[0] });
        } else {
            // Credenciales inválidas
            return res.status(401).json({ success: false, message: 'Credenciales inválidas' });
        }
    });
});

router.post('/register', (req, res) => {
    const { nombre, correo, Tel, contraseña } = req.body;


    // Aquí iría la lógica para registrar al usuario, por ejemplo:
    mysqlConnection.query('INSERT INTO usuarios (nombre, correo, Tel, contraseña, fecha_creacion) VALUES (?, ?, ?, ?, ?)', [nombre, correo, Tel, contraseña, new Date()], (err, results) => {
        if (err) {
            return res.status(500).json({ success: false, message: 'Error en la consulta' });
        }
        return res.status(201).json({ success: true, user: { nombre, correo, Tel, contraseña } });
    });
});

module.exports = router;