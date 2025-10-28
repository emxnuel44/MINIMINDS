import React, { useState } from 'react';
import { useNavigate } from 'react-router-dom';
import './CerrarSesion.css';

function CerrarSesion() {
  const [showModal, setShowModal] = useState(false);
  const navigate = useNavigate();

  const handleLogout = () => {
    // Limpiar el localStorage
    localStorage.removeItem('user');
    // Redirigir al login
    navigate('/');
  };

  const handleCancel = () => {
    setShowModal(false);
  };

  return (
    <>
      <button 
        className="logout-button"
        onClick={() => setShowModal(true)}
      >
        <span className="logout-icon">🚪</span>
        Cerrar Sesión
      </button>

      {showModal && (
        <div className="modal-overlay">
          <div className="modal-content">
            <div className="modal-header">
              <h3>¿Estás seguro?</h3>
            </div>
            <div className="modal-body">
              <p>¿Realmente quieres cerrar sesión?</p>
            </div>
            <div className="modal-footer">
              <button 
                className="modal-button cancel-button"
                onClick={handleCancel}
              >
                Cancelar
              </button>
              <button 
                className="modal-button confirm-button"
                onClick={handleLogout}
              >
                Sí, Cerrar Sesión
              </button>
            </div>
          </div>
        </div>
      )}
    </>
  );
}

export default CerrarSesion;