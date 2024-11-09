<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Banco</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
</head>
<body class="bg-info-subtle">
    <div class="container mt-5">
        <h1 class="text-center mb-4">Iniciar sesión</h1>
        <div class="row justify-content-center">
            <div class="col-md-4">
                <form action="servletBanco" method="post">
                    <div class="mb-3">
                        <label for="username" class="form-label">Usuario</label>
                        <input type="text" class="form-control" id="username" placeholder="Usuario">
                    </div>
                    <div class="mb-3">
                        <label for="password" class="form-label">Contraseña</label>
                        <div class="input-group">
                            <input type="password" class="form-control" id="password" placeholder="Contraseña">
                            <button class="btn btn-outline-secondary" type="button" id="togglePassword">
                                <i class="bi bi-eye"></i>
                            </button>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary w-100" name="btnAceptarLogin" id="btnAceptarLogin">Aceptar USER</button>
                    <button type="submit" class="btn btn-primary w-100 mt-3" name="btnAceptarLoginADMIN" id="btnAceptarLoginADMIN">Aceptar ADMIN</button>
                    <label class="form-label text-center">Botones auxiliares para redirigir a home-user y home-admin</label>
                </form>
                <div class="text-center mt-3">
                    <a href="servletBanco?registro=1">¿Eres nuevo? ¡Crea un usuario!</a>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script>
        const togglePassword = document.querySelector('#togglePassword');
        const password = document.querySelector('#password');

        togglePassword.addEventListener('click', function () {
            
        	// Mostrar/ocultar contraseña
            const type = password.getAttribute('type') === 'password' ? 'text' : 'password';
            password.setAttribute('type', type);

            // Icono del botón
            this.innerHTML = type === 'password' ? '<i class="bi bi-eye"></i>' : '<i class="bi bi-eye-slash"></i>';
        });
    </script>
</body>
</html>
