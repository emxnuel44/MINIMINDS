import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Home.css';

function Home() {
  const [homeParts, setHomeParts] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchHomeParts = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/home');
        if (!response.ok) {
          throw new Error('Error al cargar partes del hogar');
        }
        const data = await response.json();
        setHomeParts(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchHomeParts();
  }, []);

  return (
    <ElementPageWrapper
      title="Partes del Hogar"
      elements={homeParts}
      loading={loading}
      error={error}
      categoryName="Partes del Hogar"
      categoryId={8}
      gridClassName="home-grid"
      cardClassName="home-card"
      emojiClassName="home-emoji"
      nameClassName="home-name"
      englishClassName="home-english"
      containerClassName="home-container"
    />
  );
}

export default Home;
