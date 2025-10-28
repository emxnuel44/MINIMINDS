import React, { useEffect, useState } from 'react';
import ElementPageWrapper from '../components/ElementPageWrapper';
import './Family.css';

function Family() {
  const [familyMembers, setFamilyMembers] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    const fetchFamilyMembers = async () => {
      try {
        const response = await fetch('http://localhost:4001/api/elementos/categoria/slug/family');
        if (!response.ok) {
          throw new Error('Error al cargar miembros de la familia');
        }
        const data = await response.json();
        setFamilyMembers(data.elementos || []);
      } catch (err) {
        setError(err.message);
        console.error('Error:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchFamilyMembers();
  }, []);

  return (
    <ElementPageWrapper
      title="Miembros de la Familia"
      elements={familyMembers}
      loading={loading}
      error={error}
      categoryName="Miembros de la Familia"
      categoryId={10}
      gridClassName="family-grid"
      cardClassName="family-card"
      emojiClassName="family-emoji"
      nameClassName="family-name"
      englishClassName="family-english"
      containerClassName="family-container"
    />
  );
}

export default Family;
