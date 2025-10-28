import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Manners.css';

function Manners() {
  const [manners, setManners] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchManners = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/manners');
        if (!response.ok) {
          throw new Error('Error al cargar buenos modales');
        }
        const data = await response.json();
        setManners(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchManners();
  }, []);

  return (
    <ElementPageWrapper
      title="Buenos Modales"
      elements={manners}
      loading={loading}
      error={error}
      categoryName="Buenos Modales"
      categoryId={13}
      gridClassName="manners-grid"
      cardClassName="manner-card"
      emojiClassName="manner-emoji"
      nameClassName="manner-name"
      englishClassName="manner-english"
      containerClassName="manners-container"
    />
  );
}

export default Manners;
