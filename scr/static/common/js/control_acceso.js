/*document.getElementById('loginForm').addEventListener('submit', function (event) {
    event.preventDefault();

    const email = document.getElementById('email').value;
    const password = document.getElementById('password').value;

    // URL de la API MockAPI
    const url = 'https://66f710c3b5d85f31a341ee41.mockapi.io/v1/users';  // Cambia esta URL con la correcta
    // Llamada a la API para verificar el usuario
    fetch(url)
        .then(response => response.json())
        .then(users => {
            // Buscar usuario
            const usuario = users.find(user => user.email === email && user.password === password);
            // Guardar el nombre del usuario en localStorage 
            localStorage.setItem('nombreUsuario', usuario.email);  // Guardar el nombre
            localStorage.setItem('rolUsuario',usuario.rol); //guardo el rol del usuario
            if (usuario) {
                if(usuario.rol === 'administrator'){
                window.location.href = 'admin/dashboard.html'; // Página de administrador
                }
                else{
                window.location.href = 'user/dashboard.html'; // Página de invitado    
                }
            } else {
                // Mostrar mensaje de error si el usuario no existe
                document.getElementById('mensaje').textContent = 'Usuario inexistente';
            }
        })
        .catch(error => {
            console.error('Error al verificar el usuario:', error);
            document.getElementById('mensaje').textContent = 'Error al conectar con el servidor';
        });
})*/