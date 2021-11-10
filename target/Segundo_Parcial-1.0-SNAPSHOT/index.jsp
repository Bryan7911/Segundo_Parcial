<%@page import="com.emergentes.modelo.Seminarios"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
    List <Seminarios> lista = (List<Seminarios>)request.getAttribute("lista");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" align="center" cellspacing="5">
            <tr>
                <td>SEGUNDO PARCIAL TEM-742<br>Nombre: Elvis Bryan Ticona Cruz<br>Carnet: 10068138 L.P.</td>
            </tr>
        </table>
        <h1 align="center">Registro de Seminarios</h1>
        <p><a href="MainController?op=nuevo">Nuevo</a></p>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>TITULO</th>
                <th>EXPOSITOR</th>
                <th>FECHA</th>
                <th>HORA</th>
                <th>CUPO</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${lista}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.titulo}</td>
                    <td>${item.expositor}</td>
                    <td>${item.fecha}</td>
                    <td>${item.hora}</td>
                    <td>${item.cupo}</td>
                    <td><a href="MainController?op=editar&id=${item.id}">Modificar</a></td>
                    <td><a href="MainController?op=eliminar&id=${item.id}"
                           onclick="return(confirm('Está seguro ???'))">Eliminar</a></td>
                </tr>
            </c:forEach>    
        </table>
    </body>
</html>
