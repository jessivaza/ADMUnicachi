
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Recuperar Contraseña</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="CSS/cssRecuperar.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/EstiloLogin.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div id="reset-password">
        <h2>Recuperar Contraseña</h2>
        <form id="reset-form" action="srvUsuario?accion=solicitarRestablecimiento" method="POST">
            <label for="email">Correo Electrónico:</label>
            <input type="email" id="email" name="email" required/><br><br>
            <input type="submit" value="Enviar Correo de Restablecimiento"/>
        </form>
        <div id="confirmation-message" style="display: none;">Se envió correctamente</div>
    </div>

    <script>
        document.getElementById('reset-form').addEventListener('submit', function(event) {
            event.preventDefault();
            document.getElementById('confirmation-message').style.display = 'block';
            // Redirige a la página de inicio de sesión después de 2 segundos
            setTimeout(function() {
                window.location.href = 'Login.jsp'; // Cambia 'pagina_de_login.html' con la URL de tu página de inicio de sesión
            }, 1000); // Cambia el tiempo en milisegundos según sea necesario
        });
    </script>
</body>
</html>
