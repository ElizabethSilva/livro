<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Livros</title>
        
    </head>
    <body>
        <h1>Lista de livros!!! Elizabeth </h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Titulo</th>
            </tr>
            <c: forEach var="1" items="${livros"}>
                <tr>
                    <td>${l.id}</td>
                    <td>${l.titulo}</td>
                </tr>
            </c:>
        </table>
    </body>
</html>