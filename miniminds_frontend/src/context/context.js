import { useEffect } from "react";

export const Context = () => {
    useEffect(() => {
        const user = localStorage.getItem("user");
        if (!user) {
            // Si no hay usuario, redirigir a login
            window.location.href = "/";
        }
    }, []);
};
