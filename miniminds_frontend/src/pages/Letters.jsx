import React from 'react';
import { useNavigate } from 'react-router-dom';
import './Letters.css';
function Letters(){ const navigate=useNavigate(); const letters='ABCDEFGHIJKLMNOPQRSTUVWXYZ'.split('');
  return (
    <div className="letters-container">
      <button className="back-button" onClick={()=>navigate('/dashboard')}>← Volver</button>
      <h2 className="letters-title">Aprende las Letras</h2>
      <div className="letters-grid">{letters.map((l,i)=>(<div key={i} className="letter-card"><span className="letter">{l}</span></div>))}</div>
    </div>
  );
}
export default Letters;
