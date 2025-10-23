
import { useEffect, useState } from "react";
import "./Login.css";
import { Link } from "react-router-dom";

function Login() {
  const [correo, setEmail] = useState("");
  const [contrasena, setPassword] = useState("");

  useEffect(() => {
    console.log("Login component mounted");
    console.log("correo:", correo);
    console.log("contraseña:", contrasena);
  }, [correo, contrasena]);

  const handleLogin = async () => {
    try {
      // Aquí iría la lógica para autenticar al usuario, por ejemplo:
      const response = await fetch('http://localhost:4001/api/auth/login', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ correo, contrasena }),
      });
      const data = await response.json();
      console.log('data', data);
      if (data.success) {
        localStorage.setItem("user", JSON.stringify(data.user));
        window.location.href = "/dashboard";
      } else {
        alert("Credenciales inválidas");
      }
    } catch (error) {
      console.error("Error during login:", error);
      alert("Ocurrió un error. Inténtalo de nuevo.");
    }
  };


  return (
    <div className="login-container">
      <div className="login-card">
        <div className="login-header">
          <span className="emoji">🦁</span>
          <h1 className="title">MINIMINDS</h1>
          <span className="emoji">🐻</span>
        </div>

        <div className="stars">★★★★★</div>
        <div className="welcome">¡Bienvenido de vuelta! ❤️</div>

        <div className="input-group">
          <label>Correo Electrónico</label>
          <div className="input-box">
            <span>📧</span>
            <input onChange={(e) => setEmail(e.target.value)} type="email" placeholder="tu@email.com" />
          </div>
        </div>

        <div className="input-group">
          <label>Contraseña</label>
          <div className="input-box">
            <span>🔒</span>
            <input onChange={(e) => setPassword(e.target.value)} type="password" placeholder="Tu contraseña" />
          </div>
        </div>

        <button onClick={handleLogin} className="btn-login">¡Iniciar Sesión!</button>

        <p className="register-text">
          ¿No tienes cuenta?
        </p>
        <Link to="/register" className="register-link">
          <button className="btn-register">🚀 ¡Regístrate Aquí!</button></Link>
      </div>
    </div>
  );
}

export default Login;




