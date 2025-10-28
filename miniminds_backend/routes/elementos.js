const { Router } = require('express');
const router = Router();
const mysqlConnection = require('../db');

// Obtener elementos por categoría (slug)
router.get('/categoria/slug/:slug', (req, res) => {
    const { slug } = req.params;
    
    const query = `
        SELECT e.*, c.nombre as categoria_nombre, c.slug as categoria_slug
        FROM elementos e
        JOIN categorias c ON e.id_categorías = c.id
        WHERE c.slug = ?
        ORDER BY e.id
    `;
    
    mysqlConnection.query(query, [slug], (err, results) => {
        if (err) {
            console.error('Error MySQL:', err);
            return res.status(500).json({ 
                success: false, 
                message: 'Error al obtener elementos' 
            });
        }
        
        res.json({
            success: true,
            elementos: results,
            total: results.length
        });
    });
});

// Obtener todos los elementos
router.get('/', (req, res) => {
    const query = `
        SELECT e.*, c.nombre as categoria_nombre, c.slug as categoria_slug
        FROM elementos e
        JOIN categorias c ON e.id_categorías = c.id
        ORDER BY e.id
    `;
    
    mysqlConnection.query(query, (err, results) => {
        if (err) {
            console.error('Error MySQL:', err);
            return res.status(500).json({ 
                success: false, 
                message: 'Error al obtener elementos' 
            });
        }
        
        res.json({
            success: true,
            elementos: results,
            total: results.length
        });
    });
});

module.exports = router;
