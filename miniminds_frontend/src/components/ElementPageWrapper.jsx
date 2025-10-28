import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import { getElementEmoji } from '../constants/emojis';
import ElementModal from './ElementModal';
import ProgressBar from './ProgressBar';
import ListenCounter from './ListenCounter';
import useElementTracking from '../hooks/useElementTracking';

const ElementPageWrapper = ({ 
  title, 
  elements, 
  loading, 
  error, 
  categoryName, 
  categoryId, 
  gridClassName, 
  cardClassName, 
  emojiClassName, 
  nameClassName, 
  englishClassName,
  containerClassName 
}) => {
  const navigate = useNavigate();
  const [selectedElement, setSelectedElement] = useState(null);
  const [isModalOpen, setIsModalOpen] = useState(false);
  
  // Obtener ID del usuario desde localStorage
  const userId = localStorage.getItem('userId') || '1';
  
  // Hook para seguimiento de elementos
  const { 
    resumen, 
    registrarElemento, 
    getVecesVisto 
  } = useElementTracking(categoryId, userId);

  const handleElementClick = (element) => {
    setSelectedElement(element);
    setIsModalOpen(true);
  };

  const handleCloseModal = () => {
    setIsModalOpen(false);
    setSelectedElement(null);
  };

  const handleElementListened = (elementoId) => {
    registrarElemento(elementoId);
  };

  if (loading) return <div className={containerClassName}>Cargando {title.toLowerCase()}...</div>;
  if (error) return <div className={containerClassName}>Error: {error}</div>;

  return (
    <div className={containerClassName}>
      <button className="back-button" onClick={() => navigate('/dashboard')}>← Volver</button>
      <h2 className="page-title">{title}</h2>
      
      {/* Barra de progreso */}
      {resumen && (
        <ProgressBar 
          porcentaje={resumen.porcentaje_avance}
          elementosEscuchados={resumen.elementos_vistos}
          totalElementos={resumen.total_elementos}
        />
      )}
      
      <div className={gridClassName}>
        {elements.map((element, i) => (
          <div 
            key={i} 
            className={cardClassName}
            onClick={() => handleElementClick(element)}
          >
            <ListenCounter 
              count={getVecesVisto(element.id)}
              isVisible={getVecesVisto(element.id) > 0}
            />
            <span className={emojiClassName}>
              {getElementEmoji(categoryName, element.nombre)}
            </span>
            <span className={nameClassName}>{element.nombre}</span>
            {element.nombre_ingles && (
              <span className={englishClassName}>{element.nombre_ingles}</span>
            )}
          </div>
        ))}
      </div>
      
      <ElementModal
        isOpen={isModalOpen}
        onClose={handleCloseModal}
        element={selectedElement}
        category={categoryName}
        onElementListened={handleElementListened}
      />
    </div>
  );
};

export default ElementPageWrapper;
