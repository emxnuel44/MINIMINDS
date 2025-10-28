import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Numbers.css';

function Numbers() {
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

  return (
    <ElementPageWrapper
      title="Aprende los Números"
      elements={numbers}
      loading={loading}
      error={error}
      categoryName="Números"
      categoryId={1}
      gridClassName="numbers-grid"
      cardClassName="number-card"
      emojiClassName="number-emoji"
      nameClassName="number"
      englishClassName="number-english"
      containerClassName="numbers-container"
    />
  );
}
export default Numbers;
