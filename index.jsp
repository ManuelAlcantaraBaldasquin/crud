<%-- 
    Document   : index
    Created on : 03-may-2017, 21:23:10
    Author     : manolo
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ include file="ventanas.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crud</title>
    </head>
    <body><center>



        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud", "root", "root");
            Statement s = conexion.createStatement();
            ResultSet listado = s.executeQuery("SELECT * FROM tarjetasgraficas");
        %>


        <div style="width: 60vw; ">
            <h1 class="texto_ventana">Tarjetas Gráficas</h1>
            
            <!-- Botón crear-->
            <button onclick="abrirModal1()" class="btn btn-primary">Añadir tarjeta gráfica</button>
            <table class="table">
                <thead class="thead-inverse">
                <th>id</th> <th>Marca</th> <th>Modelo</th> <th>Tamaño</th> <th>Tipo</th> <th>Precio</th><th></th> <th></th>
                </thead>
                <!-- Mostrar datos -->
                <%
                    while (listado.next()) {
                        out.println("<tr><td>");
                        
                        
                        
                        out.println(listado.getString("ID") + "</td>");
                        out.println("<td>" + listado.getString("Marca") + "</td>");
                        out.println("<td>" + listado.getString("Modelo") + "</td>");
                        out.println("<td>" + listado.getString("TamañoMemoria") + "</td>");
                        out.println("<td>" + listado.getString("TipoMemoria") + "</td>");
                        out.println("<td>" + listado.getString("Precio") + "€" + "</td>");
                        
                %>
                <td> <!-- al darle a modificar saca estos datos para llevarlo a activarModificar.jsp 
                       que activará el modal que hace que nos aparezca la ventana para rellenar  -->
                    <form method="get" action="activarModal/activarModificar.jsp">
                        <input type="hidden" name="ID" value="<%=listado.getString("ID")%>">
                        <input type="hidden" name="Marca" value="<%=listado.getString("Marca")%>">
                        <input type="hidden" name="Modelo" value="<%=listado.getString("Modelo")%>">
                        <input type="hidden" name="TamañoMemoria" value="<%=listado.getString("TamañoMemoria")%>">
                        <input type="hidden" name="TipoMemoria" value="<%=listado.getString("TipoMemoria")%>">
                        <input type="hidden" name="Precio" value="<%=listado.getString("Precio")%>">
                        <button class="btn btn-primary" type="submit"> <span ></span> Modificar</button>
                    </form>
                </td>
                <td> <!-- Al darle a borrar se lleva la id a activarBorrar.jsp y allí activa el modal que hace que aparezca
                    un mensaje,dicho mensaje si le das a aceptar borrará-->
                    <form method="get" action="activarModal/activarBorrar.jsp">
                        <input type="hidden" name="ID" value="<%=listado.getString("ID")%>">
                        <button  id="<%=listado.getString("ID")%>"  class="btn btn-danger" ><span></span> Borrar</button>
                    </form>
                </td>
                <%
                    } // cerrando while   
                    conexion.close();
                %>
            </table>
        </div>
        <!--llama a modal.js-->
        <script src="modal.js"></script>

    </center></body>
</html>
