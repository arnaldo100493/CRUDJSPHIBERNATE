<%-- 
    Document   : resultado
    Created on : 6/09/2017, 03:46:41 PM
    Author     : FABAME
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Resultado</title>
    </head>
    <body>
        <h1>Resultado</h1>

        <% if (request.getAttribute("resultado").equals("Correcto")) {%>

        <h3>Operacion Correcta</h3>

        <%} else {%>

        <h3>Operacion Incorrecta</h3>

        <%}%>

        <br/>

        <a href="index.jsp">Volver</a>
    </body>
</html>
