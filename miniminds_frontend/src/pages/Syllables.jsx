import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Syllables.css';

function Syllables() {
  const [syllables, setSyllables] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchSyllables = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/syllables');
        if (!response.ok) {
          throw new Error('Error al cargar sílabas');
        }
        const data = await response.json();
        setSyllables(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchSyllables();
  }, []);

  return (
    <ElementPageWrapper
      title="Aprende las Sílabas"
      elements={syllables}
      loading={loading}
      error={error}
      categoryName="Sílabas"
      categoryId={7}
      gridClassName="syllables-grid"
      cardClassName="syllable-card"
      emojiClassName="syllable-emoji"
      nameClassName="syllable-name"
      englishClassName="syllable-english"
      containerClassName="syllables-container"
    />
  );
}

export default Syllables;
