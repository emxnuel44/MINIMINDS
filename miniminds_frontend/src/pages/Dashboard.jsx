// Dashboard.jsx
import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import CategoryCard from '../components/CategoryCard';
import './Dashboard.css';

function Dashboard() {
  const navigate = useNavigate();
  const [categories, setCategories] = useState([]);
  const categoriesIcons={
    'Letras': '🔤',
    'Números': '🔢',
    'Animales': '🐶',
    'Colores': '🎨',
    'Cuerpo': '🧍',
    'Comida': '🍎'
  };

  useEffect(() => {
    (async () => {
      try {
        const res = await fetch('http://localhost:4001/api/categorias');
        if (!res.ok) throw new Error('Failed to load categories');
        const data = await res.json();
        setCategories(data);
      } catch (e) {
        setError(e.message);
      } finally {
        setLoading(false);
      }
    })();
  }, []);

  return (
    <div className="dashboard-container">
      <h1 className="dashboard-logo">MINIMINDS</h1>
      <h2 className="dashboard-title">Elige una categoría</h2>
      <div className="categories">
        {categories.map(c => (
          <CategoryCard
            key={c.slug}
            name={c.nombre}
            emoji={categoriesIcons[c.nombre] || '❓'}
            iconUrl={c.icon_url}
            onClick={() => navigate(c.ruta || `/${c.slug}`)}
          />
        ))}
      </div>
    </div>
  );
}

export default Dashboard;
