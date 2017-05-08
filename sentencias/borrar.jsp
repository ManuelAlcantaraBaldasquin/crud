<%-- 
    Document   : borrar
    Created on : 04-may-2017, 20:01:30
    Author     : Manolo
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!--Esta página contiene la sentencia de delete -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            //Conectamos con la base de datos
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "root");
            Statement s = conexion.createStatement();
            s.execute("DELETE FROM tarjetasgraficas WHERE ID=" + request.getParameter("ID"));

            s.close();
            String redirectURL = "../index.jsp";
            response.sendRedirect(redirectURL);
            //volvemos al index cuando acaba
        %>	
    </body>
</html>