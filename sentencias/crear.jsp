<%-- 
    Document   : crear
    Created on : 04-may-2017, 17:45:20
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
        <title>Nueva Tarjeta</title>
    </head>
    <body>
    <%
        //Conectamos a la base de datos
        Class.forName("com.mysql.jdbc.Driver");
        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "root");
        Statement s = conexion.createStatement();
        ResultSet listado = s.executeQuery("SELECT * FROM tarjetasgraficas");
        
        String Marca = request.getParameter("Marca");
        String Modelo = request.getParameter("Modelo");
        String TamañoMemoria = String.valueOf(request.getParameter("TamañoMemoria"));
        String TipoMemoria = String.valueOf(request.getParameter("TipoMemoria"));
        String Precio = String.valueOf(request.getParameter("Precio"));
        
        
        //La sentencia para meter los datos
        request.setCharacterEncoding("UTF-8");
            String insercion = "INSERT INTO `tarjetasgraficas` (`ID`, `Marca`, `Modelo`, `TamañoMemoria`, `TipoMemoria`, `Precio`) "
                    + "VALUES (NULL, '"+ Marca +"', '"+ Modelo +"', '"+ TamañoMemoria +"', '"+ TipoMemoria +"', '"+ Precio +"')";
            s.execute(insercion);
            
        conexion.close();
        
            String redirectURL = "../index.jsp";
            response.sendRedirect(redirectURL);
    %>  

</body>
</html>
