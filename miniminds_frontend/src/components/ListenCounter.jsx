import React from 'react';
import './ListenCounter.css';

const ListenCounter = ({ count, isVisible = true }) => {
  if (!isVisible || count === 0) return null;

  return (
    <div className="listen-counter">
      <span className="counter-number">{count}</span>
      <span className="counter-icon">👂</span>
    </div>
  );
};

export default ListenCounter;
