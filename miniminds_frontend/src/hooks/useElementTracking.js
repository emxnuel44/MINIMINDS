import { useState, useEffect } from 'react';

const useElementTracking = (categoriaId, userId) => {
  const [estadisticas, setEstadisticas] = useState([]);
  const [resumen, setResumen] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  // Obtener estadísticas de la categoría
  const fetchEstadisticas = async () => {
    if (!userId || !categoriaId) return;

    try {
      setLoading(true);
      const response = await fetch(`http://localhost:4001/api/usuario-elementos/estadisticas/${userId}/${categoriaId}`);
      
      if (!response.ok) {
        throw new Error('Error al cargar estadísticas');
      }

      const data = await response.json();
      if (data.success) {
        setEstadisticas(data.estadisticas);
        setResumen(data.resumen);
      }
    } catch (err) {
      setError(err.message);
      console.error('Error:', err);
    } finally {
      setLoading(false);
    }
  };

  // Registrar que un elemento fue escuchado
  const registrarElemento = async (elementoId) => {
    if (!userId || !elementoId) return;

    try {
      const response = await fetch('http://localhost:4001/api/usuario-elementos/registrar', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify({
          id_usuario: userId,
          id_elementos: elementoId
        })
      });

      if (!response.ok) {
        throw new Error('Error al registrar elemento');
      }

      const data = await response.json();
      if (data.success) {
        // Actualizar estadísticas localmente
        setEstadisticas(prev => 
          prev.map(item => 
            item.id === elementoId 
              ? { ...item, veces_visto: data.veces_visto, ha_visto: 1 }
              : item
          )
        );

        // Recalcular resumen después de actualizar estadísticas
        setTimeout(() => {
          setEstadisticas(prev => {
            const elementosVistos = prev.filter(item => 
              item.id === elementoId ? true : item.ha_visto === 1
            ).length;
            
            const totalElementos = prev.length;
            const nuevoPorcentaje = totalElementos > 0 ? Math.round((elementosVistos / totalElementos) * 100) : 0;
            
            setResumen(prevResumen => ({
              ...prevResumen,
              elementos_vistos: elementosVistos,
              porcentaje_avance: nuevoPorcentaje
            }));
            
            return prev;
          });
        }, 100);
      }
    } catch (err) {
      console.error('Error al registrar elemento:', err);
    }
  };

  // Obtener veces que se ha visto un elemento
  const getVecesVisto = (elementoId) => {
    const elemento = estadisticas.find(item => item.id === elementoId);
    return elemento ? elemento.veces_visto : 0;
  };

  // Verificar si un elemento ha sido visto
  const haSidoVisto = (elementoId) => {
    const elemento = estadisticas.find(item => item.id === elementoId);
    return elemento ? elemento.ha_visto === 1 : false;
  };

  useEffect(() => {
    fetchEstadisticas();
  }, [categoriaId, userId]);

  return {
    estadisticas,
    resumen,
    loading,
    error,
    registrarElemento,
    getVecesVisto,
    haSidoVisto,
    refetch: fetchEstadisticas
  };
};

export default useElementTracking;
