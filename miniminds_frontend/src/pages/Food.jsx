import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Food.css';

function Food() {
  const [foods, setFoods] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchFoods = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/food');
        if (!response.ok) {
          throw new Error('Error al cargar alimentos');
        }
        const data = await response.json();
        setFoods(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchFoods();
  }, []);

  return (
    <ElementPageWrapper
      title="Aprende la Comida"
      elements={foods}
      loading={loading}
      error={error}
      categoryName="Comida"
      categoryId={5}
      gridClassName="food-grid"
      cardClassName="food-card"
      emojiClassName="food-emoji"
      nameClassName="food-name"
      englishClassName="food-english"
      containerClassName="food-container"
    />
  );
}

export default Food;
