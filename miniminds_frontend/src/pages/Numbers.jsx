import React from 'react';
import { useNavigate } from 'react-router-dom';
import './Numbers.css';
function Numbers(){ const navigate=useNavigate(); const numbers=Array.from({length:10},(_,i)=>i+1);
  return (
    <div className="numbers-container">
      <button className="back-button" onClick={()=>navigate('/dashboard')}>← Volver</button>
      <h2 className="numbers-title">Aprende los Números</h2>
      <div className="numbers-grid">{numbers.map((n,i)=>(<div key={i} className="number-card"><span className="number">{n}</span></div>))}</div>
    </div>
  );
}
export default Numbers;
