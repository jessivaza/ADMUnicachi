<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>UNICACHI - Iniciar sesión</title>
    <link rel="icon" href="IMG/index_u/logo1.png" type="image/x-icon">
    <link href="CSS/cssIngresar.css" rel="stylesheet" type="text/css"/>
</head>
<body>
    <div class="container">
        <div class="login-container">
            <img src="IMG/logo1.png" alt="Ícono de inicio de sesión"/>
            <h2>Mercado Unicachi</h2>
            <form action="loginController.jsp" method="post">
                <label for="username">Username:</label>
                <input type="text" id="username" name="username" required>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
                <div class="d-grid">
                    <input type="submit" value="Login">
                </div>
            </form>
            <div>
                <span class="enlace"><a href="Interfaces/Recuperar.jsp">¿Olvidaste la contraseña?</a></span>
                <span class="enlace"><a href="Interfaces/Registrarse.jsp">Registrarse</a></span>
                <span class="enlace"><a href="index.html">Modo Invitado</a></span>
            </div>
            <span class="mensaje">
                <%
                    String mensaje = (String) request.getAttribute("mensaje");
                    if (mensaje != null) {
                        out.print(mensaje);
                    }
                %>
            </span>
        </div>
    </div>
</body>
</html>
