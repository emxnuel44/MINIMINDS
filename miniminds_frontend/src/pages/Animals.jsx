import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Animals.css';

function Animals() {
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

  return (
    <ElementPageWrapper
      title="Aprende los Animales"
      elements={animals}
      loading={loading}
      error={error}
      categoryName="Animales"
      categoryId={2}
      gridClassName="animals-grid"
      cardClassName="animal-card"
      emojiClassName="animal-emoji"
      nameClassName="animal-name"
      englishClassName="animal-english"
      containerClassName="animals-container"
    />
  );
}
export default Animals;
