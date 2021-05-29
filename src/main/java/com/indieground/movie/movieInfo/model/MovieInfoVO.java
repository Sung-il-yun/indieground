package com.indieground.movie.movieInfo.model;

import java.sql.Date;
import java.sql.Timestamp;

public class MovieInfoVO {
	
	// 순번 
    private Integer sn;
    // 영화명 
    private String movienm;
    // 영화명(영문) 
    private String movienmeng;
    // 영화코드 
    private String moviecode;
    // 제작연도 
    private Date pdyear;
    // 제작국가 
    private String pdcountry;
    // 감독 
    private String director;
    // 출연진 
    private String casting;
    // 제작사 
    private String pdcompany;
    // 개봉일자 
    private Date relsedate;
    // 영화포스터 
    private String movieposter;
    // 영화평점 
    private Float score;
    // 영화줄거리 
    private String plot;
    // 등록일자 
    private Timestamp registdt;
    // 수정일자 
    private Timestamp updtdt;
    // 장르 
    private String genre;
    // 제작상태 
    private String pdstatus;
    
	public Integer getSn() {
		return sn;
	}
	public void setSn(Integer sn) {
		this.sn = sn;
	}
	public String getMovienm() {
		return movienm;
	}
	public void setMovienm(String movienm) {
		this.movienm = movienm;
	}
	public String getMovienmeng() {
		return movienmeng;
	}
	public void setMovienmeng(String movienmeng) {
		this.movienmeng = movienmeng;
	}
	public String getMoviecode() {
		return moviecode;
	}
	public void setMoviecode(String moviecode) {
		this.moviecode = moviecode;
	}
	public Date getPdyear() {
		return pdyear;
	}
	public void setPdyear(Date pdyear) {
		this.pdyear = pdyear;
	}
	public String getPdcountry() {
		return pdcountry;
	}
	public void setPdcountry(String pdcountry) {
		this.pdcountry = pdcountry;
	}
	public String getDirector() {
		return director;
	}
	public void setDirector(String director) {
		this.director = director;
	}
	public String getCasting() {
		return casting;
	}
	public void setCasting(String casting) {
		this.casting = casting;
	}
	public String getPdcompany() {
		return pdcompany;
	}
	public void setPdcompany(String pdcompany) {
		this.pdcompany = pdcompany;
	}
	public Date getRelsedate() {
		return relsedate;
	}
	public void setRelsedate(Date relsedate) {
		this.relsedate = relsedate;
	}
	public String getMovieposter() {
		return movieposter;
	}
	public void setMovieposter(String movieposter) {
		this.movieposter = movieposter;
	}
	public Float getScore() {
		return score;
	}
	public void setScore(Float score) {
		this.score = score;
	}
	public String getPlot() {
		return plot;
	}
	public void setPlot(String plot) {
		this.plot = plot;
	}
	public Timestamp getRegistdt() {
		return registdt;
	}
	public void setRegistdt(Timestamp registdt) {
		this.registdt = registdt;
	}
	public Timestamp getUpdtdt() {
		return updtdt;
	}
	public void setUpdtdt(Timestamp updtdt) {
		this.updtdt = updtdt;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	public String getPdstatus() {
		return pdstatus;
	}
	public void setPdstatus(String pdstatus) {
		this.pdstatus = pdstatus;
	}
    
    

}
