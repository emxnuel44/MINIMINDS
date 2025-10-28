import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Body.css';

function Body() {
  const [bodyParts, setBodyParts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchBodyParts = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/body');
        if (!response.ok) {
          throw new Error('Error al cargar partes del cuerpo');
        }
        const data = await response.json();
        setBodyParts(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchBodyParts();
  }, []);

  return (
    <ElementPageWrapper
      title="Aprende el Cuerpo"
      elements={bodyParts}
      loading={loading}
      error={error}
      categoryName="Cuerpo"
      categoryId={4}
      gridClassName="body-grid"
      cardClassName="body-card"
      emojiClassName="body-emoji"
      nameClassName="body-name"
      englishClassName="body-english"
      containerClassName="body-container"
    />
  );
}

export default Body;
