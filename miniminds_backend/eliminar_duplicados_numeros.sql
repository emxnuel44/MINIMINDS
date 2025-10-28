-- Comando para eliminar duplicados de números en la tabla elementos
-- Primero, vamos a ver cuántos duplicados hay
SELECT 
    nombre, 
    COUNT(*) as cantidad,
    GROUP_CONCAT(id ORDER BY id) as ids
FROM elementos 
WHERE id_categorías = 1 
GROUP BY nombre 
HAVING COUNT(*) > 1
ORDER BY nombre;

-- Comando para eliminar duplicados (mantener el registro con el ID más bajo)
DELETE e1 FROM elementos e1
INNER JOIN elementos e2 
WHERE e1.id > e2.id 
AND e1.nombre = e2.nombre 
AND e1.id_categorías = e2.id_categorías 
AND e1.id_categorías = 1;

-- Verificar que se eliminaron los duplicados
SELECT COUNT(*) as total_numeros FROM elementos WHERE id_categorías = 1;
