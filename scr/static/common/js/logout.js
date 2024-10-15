// Vinculamos la función al evento "click" del botón
function logout() {
    // Eliminar el nombre del usuario de localStorage
    //localStorage.removeItem('nombreUsuario');
    // Redirigir al formulario de login
    window.location.href = '../index.html';  // Cambia esto a la página de login o donde quieras redirigir
}

document.getElementById('logout').addEventListener('onclick', logout);
