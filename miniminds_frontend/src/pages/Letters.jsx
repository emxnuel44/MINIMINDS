import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Letters.css';

function Letters() {
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

  return (
    <ElementPageWrapper
      title="Aprende las Letras"
      elements={letters}
      loading={loading}
      error={error}
      categoryName="Letras"
      categoryId={6}
      gridClassName="letters-grid"
      cardClassName="letter-card"
      emojiClassName="letter-emoji"
      nameClassName="letter"
      englishClassName="letter-english"
      containerClassName="letters-container"
    />
  );
}
export default Letters;
