import React from 'react';
import './ProgressBar.css';

const ProgressBar = ({ porcentaje, elementosEscuchados, totalElementos }) => {
  return (
    <div className="progress-container">
      <div className="progress-header">
        <h3 className="progress-title">Progreso de Aprendizaje</h3>
        <span className="progress-percentage">{porcentaje}%</span>
      </div>
      
      <div className="progress-bar">
        <div 
          className="progress-fill" 
          style={{ width: `${porcentaje}%` }}
        ></div>
      </div>
      
      <div className="progress-stats">
        <span className="progress-text">
          {elementosEscuchados} de {totalElementos} elementos escuchados
        </span>
      </div>
    </div>
  );
};

export default ProgressBar;
