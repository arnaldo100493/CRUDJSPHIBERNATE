<%-- 
    Document   : insert
    Created on : 6/09/2017, 03:39:50 PM
    Author     : FABAME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registrar Persona</title>
    </head>
    <body>
        <h1>Registrar Persona</h1>
        <form name="frmPersonas" action="./insert" method="post">
            <label for="txtDniPersona">Dni</label>
            <input type="text" id="txtDniPersona" name="txtDniPersona"/>
            <label for="txtNombrePersona">Nombre</label>
            <input type="text" id="txtNombrePersona" name="txtNombrePersona"/>
            <label for="txtApellidoPaterno">Apellido Paterno</label>
            <input type="text" id="txtApellidoPaterno" name="txtApellidoPaterno"/>
            <label for="txtApellidoMaterno">Apellido Materno</label>
            <input type="text" id="txtApellidoMaterno" name="txtApellidoMaterno"/>
            <label for="dateFechaNacimiento">Fecha de Nacimiento</label>
            <input type="date" id="dateFechaNacimiento" name="dateFechaNacimiento"/>
            <input type="submit" value="Registrar Persona"/>
        </form>
        <br/>
        <a href="index.jsp">Volver</a>
    </body>
</html>
