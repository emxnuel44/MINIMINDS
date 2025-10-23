const { Router } = require('express');
const router = Router();
const mysqlConnection = require('../db');

router.post('/login', (req, res) => {
    const { correo, contrasena } = req.body;
    console.log(req.body);
    mysqlConnection.query('SELECT * FROM usuarios WHERE correo = ? AND contrasena = ?', [correo, contrasena], (err, results) => {
        if (err) {
            console.error("Error MySQL:", err);
            return res.status(500).json({ success: false, message: 'Error en la consulta' });
        }
        if (results.length > 0) {
            // Usuario encontrado
            console.log(results[0]);
            return res.status(200).json({ success: true, user: results[0] });
        } else {
            // Credenciales inválidas
            return res.status(401).json({ success: false, message: 'Credenciales inválidas' });
        }
    });
});

router.post('/register', (req, res) => {
    const { nombre, correo, telefono, contrasena } = req.body;
    console.log(req.body);

    mysqlConnection.query('INSERT INTO usuarios (nombre, correo, telefono, contrasena, fecha_creacion) VALUES (?, ?, ?, ?, ?)', [nombre, correo, telefono, contrasena, new Date()], (err, results) => {
        if (err) {
            console.error("Error MySQL:", err); 
            if (err.code === 'ER_DUP_ENTRY') {
                return res.status(400).json({ success: false, message: 'El correo ya está registrado' });
            }
            return res.status(500).json({ success: false, message: 'Error en la consulta' });
        }
        return res.status(201).json({ success: true, user: { nombre, correo, telefono, contrasena } });
    });
});

module.exports = router;