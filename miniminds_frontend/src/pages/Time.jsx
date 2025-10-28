import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Time.css';

function Time() {
  const [times, setTimes] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchTimes = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/time');
        if (!response.ok) {
          throw new Error('Error al cargar horas');
        }
        const data = await response.json();
        setTimes(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchTimes();
  }, []);

  return (
    <ElementPageWrapper
      title="Aprende las Horas"
      elements={times}
      loading={loading}
      error={error}
      categoryName="Horas"
      categoryId={12}
      gridClassName="time-grid"
      cardClassName="time-card"
      emojiClassName="time-emoji"
      nameClassName="time-name"
      englishClassName="time-english"
      containerClassName="time-container"
    />
  );
}

export default Time;
