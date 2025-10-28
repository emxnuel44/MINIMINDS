// Dashboard.jsx
import React, { useEffect, useState } from 'react';
import { useNavigate } from 'react-router-dom';
import CategoryCard from '../components/CategoryCard';
import CerrarSesion from '../components/CerrarSesion';

import { CATEGORY_EMOJIS } from '../constants/emojis';
import './Dashboard.css';

function Dashboard() {
  const navigate = useNavigate();
  const [categories, setCategories] = useState([]);
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  // Los emojis ahora vienen del diccionario importado

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

  useEffect(() => {
    const storedUser = localStorage.getItem("user");
    if (storedUser) {
      setUser(JSON.parse(storedUser));
    } else {
      navigate('/');
    }
  }, [navigate]);

  return (
    <div className="dashboard-container">
      

      <h1 className="dashboard-logo">MINIMINDS</h1>
      <h2 className="dashboard-title">Bienvenido {user?.nombre || 'Usuario'}</h2>
      <h2 className="dashboard-title">Elige una categoría</h2>
      <div className="categories">
        {categories.map(c => (
          <CategoryCard
            key={c.slug}
            name={c.nombre}
            emoji={CATEGORY_EMOJIS[c.nombre] || '❓'}
            iconUrl={c.icon_url}
            onClick={() => navigate(c.ruta || `/${c.slug}`)}
          />
        ))}
      </div>
      
      <CerrarSesion />
    </div>
  );
}

export default Dashboard;
