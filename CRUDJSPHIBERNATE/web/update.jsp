<%-- 
    Document   : update
    Created on : 6/09/2017, 03:40:02 PM
    Author     : FABAME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Actualizar Persona</title>
    </head>
    <body>
        <jsp:useBean id="ejbTPersona" scope="request" class="com.crud.ejb.EJBTPersona" /> 
        <h1>Actualizar datos Persona</h1>
        <form name="frmPersonas" action="./update" method="post">
            <label for="txtIdPersona">Id Persona</label>
            <input type="text" id="txtIdPersona" name="txtIdPersona" value="${ejbTPersona.getTPersona().idPersona}" readonly="readonly"/> 
            <label for="txtDniPersona">Dni</label>
            <input type="text" id="txtDniPersona" name="txtDniPersona" value="${ejbTPersona.getTPersona().dniPersona}"/>
            <label for="txtNombrePersona">Nombre</label>
            <input type="text" id="txtNombrePersona" name="txtNombrePersona" value="${ejbTPersona.getTPersona().nombrePersona}"/>
            <label for="txtApellidoPaterno">Apellido Paterno</label>
            <input type="text" id="txtApellidoPaterno" name="txtApellidoPaterno" value="${ejbTPersona.getTPersona().apellidoPaterno}"/>
            <label for="txtApellidoMaterno">Apellido Materno</label>
            <input type="text" id="txtApellidoMaterno" name="txtApellidoMaterno" value="${ejbTPersona.getTPersona().apellidoMaterno}"/> 
            <label for="dateFechaNacimiento">Fecha de Nacimiento</label>
            <input type="date" id="dateFechaNacimiento" name="dateFechaNacimiento" value="${ejbTPersona.getTPersona().fechaNacimiento}"/>
            <input type="submit" value="Actualizar Persona"/>
            <br/>
            <br/>
            <a href="index.jsp">Volver</a>
        </form>
    </body>
</html>
