import React from 'react';
import { useNavigate } from 'react-router-dom';
import './Colors.css';
function Colors(){ const navigate=useNavigate();
  const colors=[{name:'Rojo',code:'#ff4d4d'},{name:'Verde',code:'#4dff4d'},{name:'Azul',code:'#4d4dff'},{name:'Amarillo',code:'#ffff4d'},{name:'Naranja',code:'#ffa64d'},{name:'Morado',code:'#b84dff'}];
  return (
    <div className="colors-container">
      <button className="back-button" onClick={()=>navigate('/dashboard')}>← Volver</button>
      <h2 className="colors-title">Aprende los Colores</h2>
      <div className="colors-grid">{colors.map((c,i)=>(<div key={i} className="color-card" style={{background:c.code}}><span className="color-name">{c.name}</span></div>))}</div>
    </div>
  );
}
export default Colors;
