package com.josefina.model;

/**
 * Creado por Josefina on 19-06-18.
 */
public class Pelicula {
    private int id;
    private String nombrePelicula;
    private String anioPelicula;
    private int rankingPelicula;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombrePelicula() {
        return nombrePelicula;
    }

    public void setNombrePelicula(String nombrePelicula) {
        this.nombrePelicula = nombrePelicula;
    }

    public String getAnioPelicula() {
        return anioPelicula;
    }

    public void setAnioPelicula(String anioPelicula) {
        this.anioPelicula = anioPelicula;
    }

    public int getRankingPelicula() {
        return rankingPelicula;
    }

    public void setRankingPelicula(int rankingPelicula) {
        this.rankingPelicula = rankingPelicula;
    }
}
