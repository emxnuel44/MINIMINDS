import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { getElementEmoji } from '../constants/emojis';
import './Numbers.css';

function Numbers() {
  const navigate = useNavigate();
  const [numbers, setNumbers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchNumbers = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/numbers');
        if (!response.ok) {
          throw new Error('Error al cargar números');
        }
        const data = await response.json();
        setNumbers(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchNumbers();
  }, []);

  if (loading) return <div className="numbers-container">Cargando números...</div>;
  if (error) return <div className="numbers-container">Error: {error}</div>;

  return (
    <div className="numbers-container">
      <button className="back-button" onClick={() => navigate('/dashboard')}>← Volver</button>
      <h2 className="numbers-title">Aprende los Números</h2>
      <div className="numbers-grid">
        {numbers.map((number, i) => (
          <div key={i} className="number-card">
            <span className="number-emoji">
              {getElementEmoji('Números', number.nombre)}
            </span>
            <span className="number">{number.nombre}</span>
            <span className="number-english">{number.nombre_ingles}</span>
          </div>
        ))}
      </div>
    </div>
  );
}
export default Numbers;
