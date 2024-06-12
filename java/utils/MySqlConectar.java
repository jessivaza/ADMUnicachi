/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Brandon
 */
public class MySqlConectar {
        public Connection getConnection() {
       Connection cn = null;
       try {
           String url, user, pass;
           // Driver
           Class.forName("com.mysql.cj.jdbc.Driver");
           url = "jdbc:mysql://localhost:3306/unicachi?serverTimezone=UTC";
           user = "root";
           pass = "";
           cn = DriverManager.getConnection(url, user, pass);
       } catch (Exception e) {
           e.printStackTrace();
       }
       return cn;
   }
    
}
