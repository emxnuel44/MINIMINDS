import React from "react";

function CerrarSesion() {
  const handleLogout = () => {
    localStorage.removeItem("user");
    window.location.href = "/";
  };

  return (
    <button className="btn-logout" onClick={handleLogout}>
      Cerrar Sesión
    </button>
  );
}

export default CerrarSesion;
