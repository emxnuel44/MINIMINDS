import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Weather.css';

function Weather() {
  const [weathers, setWeathers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchWeathers = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/weather');
        if (!response.ok) {
          throw new Error('Error al cargar climas');
        }
        const data = await response.json();
        setWeathers(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchWeathers();
  }, []);

  return (
    <ElementPageWrapper
      title="Aprende los Climas"
      elements={weathers}
      loading={loading}
      error={error}
      categoryName="Climas"
      categoryId={11}
      gridClassName="weather-grid"
      cardClassName="weather-card"
      emojiClassName="weather-emoji"
      nameClassName="weather-name"
      englishClassName="weather-english"
      containerClassName="weather-container"
    />
  );
}

export default Weather;
