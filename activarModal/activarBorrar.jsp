<%-- 
    Document   : activarBorrar
    Created on : 05-may-2017, 20:46:41
    Author     : Manolo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="../ventanas.jsp" %>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="../style.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <!-- Abrimos el modal2, al aceptar el modal se va a la página eliminar.jsp y ahí se ejecuta la sentencia
          Si cancelamos volvemos al index.jsp por que el modal se cierra.-->
    <body onload="abrirModal2()">
        <!--Importar código de javascript-->
        <script src="../modal.js"></script>
    </body>
</html>
