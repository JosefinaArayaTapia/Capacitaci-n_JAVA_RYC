<%@ page import="com.josefina.model.Pelicula" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Josefina
  Date: 19-06-18
  Time: 22:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>Capacitacion Java</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <h1>Listado de Peliculas</h1>
    <div class="row col-md-12 col-md-offset-2 custyle">
        <table class="table table-striped custab">
            <thead>
            <a href="NuevaPelicula.jsp?tipo=get" class="btn btn-primary btn-xs pull-right"><b>+</b> Agregar Nueva Pelicula</a>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Nombre Pelicula</th>
                <th scope="col">Año</th>
                <th scope="col">Ranking</th>
                <th scope="col">QR</th>
            </tr>
            </thead>
            <tbody>
            <% List<Pelicula> Peliculas = (ArrayList<Pelicula>) request.getAttribute("Peliculas");

                for (Pelicula Pelicula : Peliculas) {%>
            <tr>
                <th scope="row"><%=Pelicula.getId()%>
                </th>
                <td><%=Pelicula.getNombrePelicula()%>
                </td>
                <td><%=Pelicula.getAnioPelicula()%>
                </td>
                <td><%=Pelicula.getRankingPelicula()%>
                </td>
                <td><img alt="my Image"
                         src="https://api.qrserver.com/v1/create-qr-code/?size=80x80&data=<%=Pelicula.getNombrePelicula()%>-<%=Pelicula.getAnioPelicula()%>">
                </td>
            </tr>
            <%}%>
            </tbody>
        </table>

    </div>
</body>
</html>
