/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controlador;

import DAO.ProductoDAO;
import Modelo.Producto;
import com.google.gson.Gson;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 *
 * @author Brandon
 */
@WebServlet("/ServletProductoJSON")
public class ServletProductoJSON extends HttpServlet {

    public ServletProductoJSON() {
        super();
    }

	
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       

        List<Producto> lista = new ProductoDAO().findAllProducto();
        Gson gson = new Gson();
        String json = gson.toJson(lista);

        response.setContentType("application/json;charset=UTF-8");
        PrintWriter pw = response.getWriter();
        pw.print(json);
    }


    
}

