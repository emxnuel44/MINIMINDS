import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { getElementEmoji } from '../constants/emojis';
import './Letters.css';

function Letters() {
  const navigate = useNavigate();
  const [letters, setLetters] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchLetters = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/letters');
        if (!response.ok) {
          throw new Error('Error al cargar letras');
        }
        const data = await response.json();
        setLetters(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchLetters();
  }, []);

  if (loading) return <div className="letters-container">Cargando letras...</div>;
  if (error) return <div className="letters-container">Error: {error}</div>;

  return (
    <div className="letters-container">
      <button className="back-button" onClick={() => navigate('/dashboard')}>← Volver</button>
      <h2 className="letters-title">Aprende las Letras</h2>
      <div className="letters-grid">
        {letters.map((letter, i) => (
          <div key={i} className="letter-card">
            <span className="letter-emoji">
              {getElementEmoji('Letras', letter.nombre)}
            </span>
            <span className="letter">{letter.nombre}</span>
            <span className="letter-english">{letter.nombre_ingles}</span>
          </div>
        ))}
      </div>
    </div>
  );
}
export default Letters;
