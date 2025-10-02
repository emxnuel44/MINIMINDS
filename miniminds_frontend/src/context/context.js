import { useEffect } from "react";

export const Context = () => {
    const user = localStorage.getItem("user");
    //Validar si esta o no logueado
    useEffect(() => {
        const user = localStorage.getItem("user");
        if (!user) {
            // Si no hay usuario, redirigir a login
            window.location.href = "/";
        }
    }, []);
};
