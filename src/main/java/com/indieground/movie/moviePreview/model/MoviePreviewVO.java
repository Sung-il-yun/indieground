package com.indieground.movie.moviePreview.model;

public class MoviePreviewVO {
	// 순번 
    private Integer sn;
    // 영화코드 
    private String moviecode;
    // 설명 
    private String sumry;
    // 동영상링크 
    private String prvlink;
    // 영화명 
    private String movienm;
    
	public Integer getSn() {
		return sn;
	}
	public void setSn(Integer sn) {
		this.sn = sn;
	}
	public String getMoviecode() {
		return moviecode;
	}
	public void setMoviecode(String moviecode) {
		this.moviecode = moviecode;
	}
	public String getSumry() {
		return sumry;
	}
	public void setSumry(String sumry) {
		this.sumry = sumry;
	}
	public String getPrvlink() {
		return prvlink;
	}
	public void setPrvlink(String prvlink) {
		this.prvlink = prvlink;
	}
	public String getMovienm() {
		return movienm;
	}
	public void setMovienm(String movienm) {
		this.movienm = movienm;
	}
    
    

}
