
import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { getElementEmoji } from '../constants/emojis';
import './Colors.css';

function Colors() {
  const navigate = useNavigate();
  const [colors, setColors] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Diccionario de códigos de colores
  const colorCodes = {
    'Rojo': '#ff4d4d',
    'Verde': '#4dff4d',
    'Azul': '#4d4dff',
    'Amarillo': '#ffff4d',
    'Naranja': '#ffa64d',
    'Morado': '#b84dff',
    'Rosa': '#ff69b4',
    'Café': '#8b4513',
    'Gris': '#808080',
    'Negro': '#000000',
    'Blanco': '#ffffff'
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

  if (loading) return <div className="colors-container">Cargando colores...</div>;
  if (error) return <div className="colors-container">Error: {error}</div>;

  return (
    <div className="colors-container">
      <button className="back-button" onClick={() => navigate('/dashboard')}>← Volver</button>
      <h2 className="colors-title">Aprende los Colores</h2>
      <div className="colors-grid">
        {colors.map((color, i) => (
          <div 
            key={i} 
            className="color-card" 
            style={{ background: colorCodes[color.nombre] || '#cccccc' }}
          >
            <span className="color-emoji">
              {getElementEmoji('Colores', color.nombre)}
            </span>
            <span className="color-name">{color.nombre}</span>
            <span className="color-english">{color.nombre_ingles}</span>
          </div>
        ))}
      </div>
    </div>
  );
}
export default Colors;
