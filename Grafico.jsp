<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Gráfico Circular</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <canvas id="graficoPequeno" width="400" height="400"></canvas>

    <script>
        // Código para el gráfico circular
        var ctx1 = document.getElementById('graficoPequeno').getContext('2d');
        var graficoPequeno = new Chart(ctx1, {
            type: 'doughnut',
            data: {
                labels: ['Rojo', 'Verde', 'Azul', 'Morado', 'Amarillo', 'Naranja'],
                datasets: [{
                    // Usar la variable de ámbito de sesión
                    data: [${sessionScope.cantidadProducto}], // Corregida la expresión EL
                    backgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#9370DB', '#FFD700', '#FFA500'],
                    hoverBackgroundColor: ['#FF6384', '#36A2EB', '#FFCE56', '#9370DB', '#FFD700', '#FFA500']
                }]
            },
            options: {
                responsive: false,
                maintainAspectRatio: false
            }
        });
    </script>
</body>
</html>
