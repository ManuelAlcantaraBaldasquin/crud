<%-- 
    Document   : ventanas
    Created on : 04-may-2017, 21:05:53
    Author     : Manolo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>



        <!-- Esta ventana emergente muestra los campos a rellenar cuando le das a nuevo -->
        <div id="idModal" class="modal">

            <!-- Contenido de la ventana -->
            <div class="modal-content">
                <h1 class="texto_ventana">Nueva Tarjeta Gráfica</h1>
                <table>
                    <tr>
                        <td>Marca</td> <td>Modelo</td> <td>Tamaño</td> <td>Tipo</td> <td>Precio</td>
                    </tr>
                    <!-- los requisitos de cada campo y del tipo que serán-->
                    <div style="width: 80vw;">
                        <form method="get" action="sentencias/crear.jsp">
                            <tr><td><input type="text" required  name="Marca" maxlength="15" size="15"></td>
                                <td><input type="text" required name="Modelo" maxlength="15" size="15"></td>
                                <td><input type="number" required name="TamañoMemoria" max="99" size="4"></td>
                                <td><input type="text" required name="TipoMemoria" maxlength="7" size="7"></td>
                                <td><input type="number" required name="Precio"  max="9999" size="7"></td>
                            <tr><td><button class="btn btn-primary" type="submit" value="Añadir">Añadir</button>
                                    <button id="btn_salir" class="btn btn-danger" type="reset">Salir</button></td></tr>
                        </form>
                    </div>
            </div>
        </table>
    </div>
</div>

<!-- Muestra el mensaje de seguridad al borrar-->
<div id="idModal2" class="modal2">
    <div class="modal-content2">
        <h1 class="texto_ventana">AVISO</h1>
        <p style="text-align: center;">¿Está seguro de que desea borrarlo?</p>
        <div style="display: flex;"> 
            <!--Mandamos el id obtenido del index a la página de eliminar.-->
            <form method="get" action="../sentencias/borrar.jsp">
                <input id="idEliminar" type="hidden" name="ID" value="<%=request.getParameter("ID")%>"/>
                <button  type="submit" class="btn btn-primary" >Aceptar</button>
            </form>
            <!--Volvemos a la página de inicio-->
            <form action="../index.jsp">
                <button style="float:right;" class="btn btn-danger">Cancelar</button>
            </form>
        </div>
    </div>
</div>

<div id="idModal3" class="modal3">

    <!--Lo que hay dentro de la ventana-->
    <div class="modal-content3">
        
        <h1 class="texto_ventana">Modificar tarjeta Gráfica</h1>
        <table>
            <tr>
                <td>Marca</td> <td>Modelo</td> <td>Tamaño</td> <td>Tipo</td> <td>Precio</td>
            </tr>
            <div style="width: 80vw; display: flex; ">
                <form method="get" action="../sentencias/modificar.jsp">
                    <tr><input type="hidden"  name="ID" value="<%=request.getParameter("ID")%>">
                    <td><input type="text" required  name="Marca" maxlength="15" size="15" value="<%=request.getParameter("Marca")%>"></td>
                    <td><input type="text" required name="Modelo" maxlength="15" size="15" value="<%=request.getParameter("Modelo")%>"></td>
                    <td><input type="number" required name="TamañoMemoria" max="99" size="4" value="<%=request.getParameter("TamañoMemoria")%>"></td>
                    <td><input type="text" required name="TipoMemoria" maxlength="7" size="7" value="<%=request.getParameter("TipoMemoria")%>"></td>
                    <td><input type="number" required name="Precio" max="9999" size="7" value="<%=request.getParameter("Precio")%>"></td>
                    </table>
                    <div style="display:flex ">
                    <button class="btn btn-primary" type="submit" value="Añadir">Confirmar</button>
                </form>
               <form action="../index.jsp">
                <button style="float:right;" class="btn btn-danger" >Salir</button></div> 
            </form>
             
            </div>
    </div>
        
    </div>
</div>

</body>
</html>
