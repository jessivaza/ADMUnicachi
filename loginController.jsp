<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.io.*,java.util.*"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*" %>

<%
    // Obtener los parámetros del formulario
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    // Variables de conexión a la base de datos
    Connection con = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    try {
        // Cargar el driver de MySQL
        Class.forName("com.mysql.jdbc.Driver");
        
        // Establecer la conexión a la base de datos (reemplaza los valores según tu configuración)
        String url = "jdbc:mysql://localhost:3306/unicachi";
        String dbUsername = "root";
        String dbPassword = "";
        con = DriverManager.getConnection(url, dbUsername, dbPassword);
        
        // Consulta SQL para obtener el usuario
        String query = "SELECT * FROM usuarios WHERE username=? AND password=?";
        ps = con.prepareStatement(query);
        ps.setString(1, username);
        ps.setString(2, password);
        
        // Ejecutar la consulta
        rs = ps.executeQuery();
        
        // Verificar si se encontró un usuario con las credenciales proporcionadas
        if(rs.next()) {
            // Autenticación exitosa
            session.setAttribute("username", username);
            response.sendRedirect("Das.jsp"); // Redirigir a la página de bienvenida o cualquier otra página después del login exitoso
        } else {
            // Autenticación fallida
            out.println("<p>Usuario o contraseña incorrectos. Por favor, intente de nuevo.</p>");
            // También puedes redirigir a otra página de error o mostrar un mensaje de error en la misma página de login
        }
    } catch(Exception e) {
        e.printStackTrace();
    } finally {
        // Cerrar la conexión y liberar los recursos
        try {
            if(rs != null) rs.close();
            if(ps != null) ps.close();
            if(con != null) con.close();
        } catch(SQLException e) {
            e.printStackTrace();
        }
    }
%>
