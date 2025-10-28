import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { getElementEmoji } from '../constants/emojis';
import './Animals.css';

function Animals() {
  const navigate = useNavigate();
  const [animals, setAnimals] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchAnimals = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/animals');
        if (!response.ok) {
          throw new Error('Error al cargar animales');
        }
        const data = await response.json();
        setAnimals(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchAnimals();
  }, []);

  if (loading) return <div className="animals-container">Cargando animales...</div>;
  if (error) return <div className="animals-container">Error: {error}</div>;

  return (
    <div className="animals-container">
      <button className="back-button" onClick={() => navigate('/dashboard')}>← Volver</button>
      <h2 className="animals-title">Aprende los Animales</h2>
      <div className="animals-grid">
        {animals.map((animal, i) => (
          <div key={i} className="animal-card">
            <span className="animal-emoji" aria-hidden="true">
              {getElementEmoji('Animales', animal.nombre)}
            </span>
            <span className="animal-name">{animal.nombre}</span>
            <span className="animal-english">{animal.nombre_ingles}</span>
          </div>
        ))}
      </div>
    </div>
  );
}
export default Animals;
