import React, { useState, useEffect } from 'react';
import { FaPlay, FaTimes, FaVolumeUp } from 'react-icons/fa';
import { getElementEmoji } from '../constants/emojis';
import './ElementModal.css';

const ElementModal = ({ isOpen, onClose, element, category, onElementListened }) => {
  const [isPlaying, setIsPlaying] = useState(false);
  const [speechSynthesis, setSpeechSynthesis] = useState(null);
  const [speechRate, setSpeechRate] = useState(0.8);

  useEffect(() => {
    // Verificar si el navegador soporta Web Speech API
    if ('speechSynthesis' in window) {
      setSpeechSynthesis(window.speechSynthesis);
    } else {
      console.warn('Este navegador no soporta Web Speech API');
    }
  }, []);

  // Reproducir audio automáticamente al abrir el modal
  useEffect(() => {
    if (isOpen && element && speechSynthesis) {
      // Pequeño delay para asegurar que el modal esté completamente abierto
      const timer = setTimeout(() => {
        playAudio();
      }, 300);
      
      return () => clearTimeout(timer);
    }
  }, [isOpen, element, speechSynthesis]);

  const playAudio = () => {
    if (!speechSynthesis || !element) return;

    // Cancelar cualquier síntesis en curso
    speechSynthesis.cancel();

    // Crear un nuevo utterance
    const utterance = new SpeechSynthesisUtterance(element.nombre_ingles);
    
    // Configurar la voz
    utterance.lang = 'en-US';
    utterance.rate = speechRate; // Usar la velocidad seleccionada por el usuario
    utterance.pitch = 1;
    utterance.volume = 1;

    // Eventos
    utterance.onstart = () => {
      setIsPlaying(true);
    };

    utterance.onend = () => {
      setIsPlaying(false);
      // Registrar que el elemento fue escuchado
      if (onElementListened && element) {
        onElementListened(element.id);
      }
    };

    utterance.onerror = (event) => {
      console.error('Error en síntesis de voz:', event.error);
      setIsPlaying(false);
    };

    // Reproducir
    speechSynthesis.speak(utterance);
  };

  const handleClose = () => {
    if (speechSynthesis) {
      speechSynthesis.cancel();
    }
    setIsPlaying(false);
    onClose();
  };

  if (!isOpen || !element) return null;

  return (
    <div className="modal-overlay" onClick={handleClose}>
      <div className="modal-content" onClick={(e) => e.stopPropagation()}>
        <button className="modal-close" onClick={handleClose}>
          <FaTimes />
        </button>
        
        <div className="modal-header">
          <div className="modal-emoji">
            {getElementEmoji(category, element.nombre)}
          </div>
          <h2 className="modal-title">{element.nombre}</h2>
        </div>

        <div className="modal-body">
          <div className="modal-info">
            <div className="info-item">
              <span className="info-label">Español:</span>
              <span className="info-value">{element.nombre}</span>
            </div>
            <div className="info-item">
              <span className="info-label">Inglés:</span>
              <span className="info-value">{element.nombre_ingles}</span>
            </div>
            {element.nombre_aleman && (
              <div className="info-item">
                <span className="info-label">Alemán:</span>
                <span className="info-value">{element.nombre_aleman}</span>
              </div>
            )}
          </div>

          <div className="audio-section">
            <div className="speed-control">
              <label className="speed-label">
                Velocidad: {speechRate.toFixed(1)}x
              </label>
              <input
                type="range"
                min="0.5"
                max="2.0"
                step="0.1"
                value={speechRate}
                onChange={(e) => setSpeechRate(parseFloat(e.target.value))}
                className="speed-slider"
                disabled={!speechSynthesis}
              />
            </div>

            <div className="audio-buttons">
              <button 
                className={`audio-button ${isPlaying ? 'playing' : ''}`}
                onClick={playAudio}
                disabled={!speechSynthesis}
              >
                <FaVolumeUp className="audio-icon" />
                <span>{isPlaying ? 'Reproduciendo...' : 'Escuchar en Inglés'}</span>
              </button>
              
              <button 
                className="repeat-button"
                onClick={playAudio}
                disabled={!speechSynthesis || isPlaying}
              >
                <FaPlay className="repeat-icon" />
                <span>Repetir</span>
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};

export default ElementModal;
