<%-- 
    Document   : modificar
    Created on : 04-may-2017, 18:00:22
    Author     : Manolo
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nueva tarjeta</title>
    </head>
    <body>
        <%
            //Conectamos a la base de datos
            
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "root");
            Statement s = conexion.createStatement();
            request.setCharacterEncoding("UTF-8");
            s.execute("UPDATE tarjetasgraficas SET"
                    + " Marca='" + request.getParameter("Marca")
                    + "', Modelo='" + request.getParameter("Modelo")
                    + "', TamañoMemoria='" + String.valueOf(request.getParameter("TamañoMemoria"))
                    + "', TipoMemoria='" + String.valueOf(request.getParameter("TipoMemoria"))
                    + "', Precio='" + String.valueOf(request.getParameter("Precio"))  
                    + "' WHERE ID=" + Integer.valueOf(request.getParameter("ID")));
            s.close();

           
            String redirectURL = "../index.jsp";
            response.sendRedirect(redirectURL);
            //vuelta al index
        %>	

    </body>
</html>
