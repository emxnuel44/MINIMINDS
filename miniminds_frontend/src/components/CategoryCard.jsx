import React from 'react';
import './CategoryCard.css';
function CategoryCard({ name, emoji, onClick }){
  return (
    <button className="category-card" onClick={onClick}>
      <div className="emoji" aria-hidden>{emoji}</div>
      <div className="name">{name}</div>
    </button>
  );
}
export default CategoryCard;
