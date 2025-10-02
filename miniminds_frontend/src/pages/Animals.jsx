import React from 'react';
import { useNavigate } from 'react-router-dom';
import './Animals.css';
function Animals(){ const navigate=useNavigate();
  const animals=[{emoji:'🐶',name:'Perro'},{emoji:'🐱',name:'Gato'},{emoji:'🐰',name:'Conejo'},{emoji:'🦁',name:'León'},{emoji:'🐮',name:'Vaca'},{emoji:'🐸',name:'Rana'}];
  return (
    <div className="animals-container">
      <button className="back-button" onClick={()=>navigate('/dashboard')}>← Volver</button>
      <h2 className="animals-title">Aprende los Animales</h2>
      <div className="animals-grid">{animals.map((a,i)=>(<div key={i} className="animal-card"><span className="animal-emoji" aria-hidden>{a.emoji}</span><span className="animal-name">{a.name}</span></div>))}</div>
    </div>
  );
}
export default Animals;
