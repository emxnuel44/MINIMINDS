import React from 'react';
import { useNavigate } from 'react-router-dom';
import './Food.css';
function Food(){ const navigate=useNavigate();
  const foods=[{emoji:'🍎',name:'Manzana'},{emoji:'🍌',name:'Plátano'},{emoji:'🍕',name:'Pizza'},{emoji:'🍔',name:'Hamburguesa'},{emoji:'🍓',name:'Fresa'},{emoji:'🥕',name:'Zanahoria'}];
  return (
    <div className="food-container">
      <button className="back-button" onClick={()=>navigate('/dashboard')}>← Volver</button>
      <h2 className="food-title">Aprende la Comida</h2>
      <div className="food-grid">{foods.map((f,i)=>(<div key={i} className="food-card"><span className="food-emoji">{f.emoji}</span><span className="food-name">{f.name}</span></div>))}</div>
    </div>
  );
}
export default Food;
