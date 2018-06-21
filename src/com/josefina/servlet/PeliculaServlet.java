package com.josefina.servlet;

import com.josefina.dao.PeliculaDao;
import com.josefina.model.Pelicula;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;

/**
 * Creado por Josefina on 19-06-18.
 */

@WebServlet("/PeliculaServlet")
public class PeliculaServlet extends javax.servlet.http.HttpServlet {

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        PeliculaDao Pd = new PeliculaDao();
        try {
            Pelicula p = new Pelicula();

            String NombrePelicula = request.getParameter("NombrePelicula");
            String AnioPelicula = request.getParameter("AnioPelicula");
            Integer RankingPelicula = Integer.valueOf(request.getParameter("RankingPelicula"));

            p.setNombrePelicula(NombrePelicula);
            p.setAnioPelicula(AnioPelicula);
            p.setRankingPelicula(RankingPelicula);
            Pd.InsertarPelicula(p);


        } catch (Exception e) {

            e.printStackTrace();
        }
        RequestDispatcher view = request.getRequestDispatcher("/ListarPeliculas.jsp");
        request.setAttribute("Peliculas", Pd.ListarPeliculas());
        view.forward(request, response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {

        Pelicula p = new Pelicula();
        PeliculaDao Pd = new PeliculaDao();
        try {

            String NombrePelicula = request.getParameter("NombrePelicula");
            String AnioPelicula = request.getParameter("AnioPelicula");
            Integer RankingPelicula = Integer.valueOf(request.getParameter("RankingPelicula"));

            p.setNombrePelicula(NombrePelicula);
            p.setAnioPelicula(AnioPelicula);
            p.setRankingPelicula(RankingPelicula);
            Pd.InsertarPelicula(p);

        } catch (Exception e) {

            e.printStackTrace();
        }
        RequestDispatcher view = request.getRequestDispatcher("/ListarPeliculas.jsp");
        request.setAttribute("Peliculas", Pd.ListarPeliculas());
        view.forward(request, response);
    }
}
