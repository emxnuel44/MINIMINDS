import React from 'react';
import { useNavigate } from 'react-router-dom';
import './Body.css';
function Body(){ const navigate=useNavigate();
  const bodyParts=[{emoji:'👀',name:'Ojos'},{emoji:'👂',name:'Orejas'},{emoji:'👃',name:'Nariz'},{emoji:'👄',name:'Boca'},{emoji:'🖐️',name:'Mano'},{emoji:'🦶',name:'Pie'}];
  return (
    <div className="body-container">
      <button className="back-button" onClick={()=>navigate('/dashboard')}>← Volver</button>
      <h2 className="body-title">Aprende el Cuerpo</h2>
      <div className="body-grid">{bodyParts.map((b,i)=>(<div key={i} className="body-card"><span className="body-emoji">{b.emoji}</span><span className="body-name">{b.name}</span></div>))}</div>
    </div>
  );
}
export default Body;
