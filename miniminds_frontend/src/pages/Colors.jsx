
import React, { useEffect, useState } from 'react';
import ColorsPageWrapper from '../components/ColorsPageWrapper';
import './Colors.css';

function Colors() {
  const [colors, setColors] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Diccionario de códigos de colores
  const colorCodes = {
    // Colores básicos
    'Rojo': '#ff4d4d',
    'Verde': '#4dff4d',
    'Azul': '#4d4dff',
    'Amarillo': '#ffff4d',
    'Naranja': '#ffa64d',
    'Morado': '#b84dff',
    'Marrón': '#8b4513',
    'Negro': '#000000',
    'Blanco': '#ffffff',
    'Rosa': '#ff69b4',
    'Gris': '#808080',
    
    // Colores claros
    'Azul Claro': '#87ceeb',
    'Rojo Claro': '#ffb3ba',
    'Verde Claro': '#90ee90',
    'Amarillo Claro': '#ffffe0',
    'Naranja Claro': '#ffd700',
    'Morado Claro': '#dda0dd',
    'Marrón Claro': '#d2b48c',
    
    // Colores oscuros
    'Azul Oscuro': '#000080',
    'Rojo Oscuro': '#8b0000',
    'Verde Oscuro': '#006400',
    'Azul Marino': '#000080',
    
    // Colores especiales
    'Amarillo Dorado': '#ffd700',
    'Naranja Dorado': '#ff8c00',
    'Violeta': '#8a2be2',
    'Beige': '#f5f5dc',
    'Turquesa': '#40e0d0',
    'Lima': '#32cd32',
    'Dorado': '#ffd700',
    'Plateado': '#c0c0c0'
  };

  useEffect(() => {
    const fetchColors = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/colors');
        if (!response.ok) {
          throw new Error('Error al cargar colores');
        }
        const data = await response.json();
        setColors(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchColors();
  }, []);

  return (
    <ColorsPageWrapper
      title="Aprende los Colores"
      elements={colors}
      loading={loading}
      error={error}
      categoryName="Colores"
      categoryId={3}
      colorCodes={colorCodes}
    />
  );
}
export default Colors;
