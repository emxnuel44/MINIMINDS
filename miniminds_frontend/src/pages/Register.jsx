
import { useEffect, useState } from "react";
import "./Login.css";
import { Link } from "react-router-dom";

function Register() {
    const [correo, setEmail] = useState("");
    const [contrasena, setPassword] = useState("");
    const [nombre, setNombre] = useState("");
    const [telefono, setTelefono] = useState("");

    useEffect(() => {
        console.log("Login component mounted");
        console.log("correo:", correo);
        console.log("contraseña:", contrasena);
        console.log("nombre:", nombre);
        console.log("telefono:", telefono);
    }, [nombre, correo, contrasena, telefono]);

    const handleRegister = async () => {
        try {
            // Aquí iría la lógica para autenticar al usuario, por ejemplo:
            const response = await fetch('http://localhost:4001/api/auth/register', {
                method: 'POST',
                headers: { 'Content-Type': 'application/json' },
                body: JSON.stringify({ correo, contrasena, nombre, telefono }),
            });
            const data = await response.json();
            if (data.success) {
                alert("Registro exitoso");
                localStorage.setItem("user", JSON.stringify(data.user));
                window.location.href = "/dashboard";
            } else {
                alert("Error en el registro: " + data.message);
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
                <div className="welcome">¡Registrate! ❤️</div>
                <div className="input-group">
                    <label>Nombre</label>
                    <div className="input-box">
                        <span>📧</span>
                        <input onChange={(e) => setNombre(e.target.value)} type="text" placeholder="nombre" />
                    </div>
                </div>

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
                <div className="input-group">
                    <label>Telefono</label>
                    <div className="input-box">
                        <span>�</span>
                        <input onChange={(e) => setTelefono(e.target.value)} type="tel" placeholder="Tu teléfono" />
                    </div>
                </div>
                
                <button onClick={handleRegister} className="btn-register">🚀 ¡Regístrate Aquí!</button>
            </div>
        </div>
    );
}

export default Register;




