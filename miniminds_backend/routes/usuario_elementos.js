const { Router } = require('express');
const router = Router();
const mysqlConnection = require('../db');

// Registrar que un usuario escuchó un elemento
router.post('/registrar', (req, res) => {
  const { id_usuario, id_elementos } = req.body;

  if (!id_usuario || !id_elementos) {
    return res.status(400).json({
      success: false,
      message: 'ID de usuario e ID de elemento son requeridos'
    });
  }

  // Verificar si ya existe el registro
  const checkQuery = 'SELECT * FROM usuarios_elementos WHERE id_usuario = ? AND id_elementos = ?';
  
  mysqlConnection.query(checkQuery, [id_usuario, id_elementos], (err, results) => {
    if (err) {
      console.error('Error MySQL:', err);
      return res.status(500).json({
        success: false,
        message: 'Error al verificar registro'
      });
    }

    if (results.length > 0) {
      // Actualizar contador
      const updateQuery = 'UPDATE usuarios_elementos SET veces_visto = veces_visto + 1, updated_at = CURRENT_TIMESTAMP WHERE id_usuario = ? AND id_elementos = ?';
      
      mysqlConnection.query(updateQuery, [id_usuario, id_elementos], (err, result) => {
        if (err) {
          console.error('Error MySQL:', err);
          return res.status(500).json({
            success: false,
            message: 'Error al actualizar contador'
          });
        }

        res.json({
          success: true,
          message: 'Contador actualizado',
          veces_visto: results[0].veces_visto + 1
        });
      });
    } else {
      // Crear nuevo registro
      const insertQuery = 'INSERT INTO usuarios_elementos (id_usuario, id_elementos, veces_visto) VALUES (?, ?, 1)';
      
      mysqlConnection.query(insertQuery, [id_usuario, id_elementos], (err, result) => {
        if (err) {
          console.error('Error MySQL:', err);
          return res.status(500).json({
            success: false,
            message: 'Error al crear registro'
          });
        }

        res.json({
          success: true,
          message: 'Registro creado',
          veces_visto: 1
        });
      });
    }
  });
});

// Obtener estadísticas de un usuario para una categoría
router.get('/estadisticas/:id_usuario/:id_categoria', (req, res) => {
  const { id_usuario, id_categoria } = req.params;

  const query = `
    SELECT 
      e.id,
      e.nombre,
      COALESCE(ue.veces_visto, 0) as veces_visto,
      CASE WHEN ue.id IS NOT NULL THEN 1 ELSE 0 END as ha_visto
    FROM elementos e
    LEFT JOIN usuarios_elementos ue ON e.id = ue.id_elementos AND ue.id_usuario = ?
    WHERE e.id_categorías = ?
    ORDER BY e.id
  `;

  mysqlConnection.query(query, [id_usuario, id_categoria], (err, results) => {
    if (err) {
      console.error('Error MySQL:', err);
      return res.status(500).json({
        success: false,
        message: 'Error al obtener estadísticas'
      });
    }

    // Calcular porcentaje de avance
    const total_elementos = results.length;
    const elementos_vistos = results.filter(item => item.ha_visto === 1).length;
    const porcentaje = total_elementos > 0 ? Math.round((elementos_vistos / total_elementos) * 100) : 0;

    res.json({
      success: true,
      estadisticas: results,
      resumen: {
        total_elementos,
        elementos_vistos,
        porcentaje_avance: porcentaje
      }
    });
  });
});

// Obtener estadísticas generales de un usuario
router.get('/resumen/:id_usuario', (req, res) => {
  const { id_usuario } = req.params;

  const query = `
    SELECT 
      c.id as id_categoria,
      c.nombre as categoria_nombre,
      c.slug as categoria_slug,
      COUNT(e.id) as total_elementos,
      COUNT(ue.id) as elementos_vistos,
      ROUND((COUNT(ue.id) / COUNT(e.id)) * 100, 1) as porcentaje_avance
    FROM categorias c
    LEFT JOIN elementos e ON c.id = e.id_categorías
    LEFT JOIN usuarios_elementos ue ON e.id = ue.id_elementos AND ue.id_usuario = ?
    GROUP BY c.id, c.nombre, c.slug
    ORDER BY c.id
  `;

  mysqlConnection.query(query, [id_usuario], (err, results) => {
    if (err) {
      console.error('Error MySQL:', err);
      return res.status(500).json({
        success: false,
        message: 'Error al obtener resumen'
      });
    }

    res.json({
      success: true,
      resumen: results
    });
  });
});

module.exports = router;
