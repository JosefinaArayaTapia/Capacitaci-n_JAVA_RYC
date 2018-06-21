<%--
  Created by IntelliJ IDEA.
  User: Josefina
  Date: 19-06-18
  Time: 22:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Agregar Pelicula</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

</head>
<body>
<div class="container">
    <h1>NUEVA PELICULA</h1>
    <a href="PeliculaServlet" class="btn btn-primary btn-xs pull-right"><b>+</b> Listado de Peliculas</a>

    <form action="PeliculaServlet" method="<%=request.getParameter("tipo")%>">
        <div class="form-group row">
            <label for="NombrePelicula" class="col-sm-2 col-form-label">Nombre Pelicula</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" required name="NombrePelicula" id="NombrePelicula" placeholder="Nombre">
            </div>
        </div>
        <div class="form-group row">
            <label for="AnioPelicula" class="col-sm-2 col-form-label">Año Pelicula</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" required name="AnioPelicula" id="AnioPelicula" placeholder="Año">
            </div>
        </div>
        <div class="form-group row">
            <label for="RankingPelicula" class="col-sm-2 col-form-label">Ranking</label>
            <div class="col-sm-10">
                <input type="number" min="0" max="5" required class="form-control" name="RankingPelicula" id="RankingPelicula" placeholder="Ranking">
            </div>
        </div>
        <div class="form-group row">
            <div class="offset-sm-2 col-sm-10">
                <button type="submit" class="btn btn-primary">Agregar</button>
            </div>
        </div>
    </form>
</div>
</body>
</html>
