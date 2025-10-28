import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Objects.css';

function Objects() {
  const [objects, setObjects] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchObjects = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/objects');
        if (!response.ok) {
          throw new Error('Error al cargar objetos');
        }
        const data = await response.json();
        setObjects(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchObjects();
  }, []);

  return (
    <ElementPageWrapper
      title="Aprende los Objetos"
      elements={objects}
      loading={loading}
      error={error}
      categoryName="Objetos"
      categoryId={9}
      gridClassName="objects-grid"
      cardClassName="object-card"
      emojiClassName="object-emoji"
      nameClassName="object-name"
      englishClassName="object-english"
      containerClassName="objects-container"
    />
  );
}

export default Objects;
