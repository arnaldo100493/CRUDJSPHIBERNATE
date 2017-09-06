<%-- 
    Document   : read
    Created on : 6/09/2017, 03:39:56 PM
    Author     : FABAME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado de Personas</title>
        <script>
            function actualizar(idPersona) {
                window.location.href = "./update?idPersona=" + idPersona;
            }
            function borrar(idPersona) {
                var r = confirm("¿Esta seguro que desea eliminar esta persona?");
                if (r === true) {
                    window.location.href = "./delete?idPersona=" + idPersona;
                }
        </script>
    </head>
    <body>
        <jsp:useBean id="ejbTPersona" scope="request" class="com.crud.ejb.EJBTPersona"/>
        <h1>Listado de Personas</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>DNI</th>
                    <th>NOMBRE</th>
                    <th>APELLIDO PATERNO</th>
                    <th>APELLIDO MATERNO</th>
                    <th>FECHA NACIMIENTO</th>
                    <th colspan="2">ACCIÓN</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach var="item" items="${ejbTPersona.listadoTPersonas}">
                <tr>
                    <td>${item.getIdPersona()}</td>
                    <td>${item.getDniPersona()}</td>
                    <td>${item.getNombrePersona()}</td>
                    <td>${item.getApellidoPaterno()}</td>
                    <td>${item.getApellidoMaterno()}</td>
                    <td>${item.getFechaNacimiento()}</td>
                    <td><input type="button" id="${item.getIdPersona()}" onclick="actualizar(this.id);" value="Editar"/></td>
                    <td><input type="button" id="${item.getIdPersona()}" onclick="borrar(this.id);" value="Borrar"</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <br/>
    <h3><a href="index.jsp">Volver</a></h3>
</body>
</html>
