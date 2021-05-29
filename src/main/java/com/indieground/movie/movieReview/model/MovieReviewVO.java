package com.indieground.movie.movieReview.model;

import java.sql.Timestamp;

public class MovieReviewVO {

	// 순번 
    private Integer sn;
    // 영화명 
    private String movienm;
    // 리뷰 제목 
    private String rvtittle;
    // 리뷰 소제목 
    private String rvsubtittle;
    // 리뷰내용 
    private String rvcontent;
    // 등록일자 
    private Timestamp registdt;
    // 등록자 
    private String registid;
    // 수정일자 
    private Timestamp updtdt;
    // 수정자 
    private String updtid;
    // 리뷰평점 
    private Float rvscore;
    // 영화코드 
    private String moviecode;
    
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
	public String getRvtittle() {
		return rvtittle;
	}
	public void setRvtittle(String rvtittle) {
		this.rvtittle = rvtittle;
	}
	public String getRvsubtittle() {
		return rvsubtittle;
	}
	public void setRvsubtittle(String rvsubtittle) {
		this.rvsubtittle = rvsubtittle;
	}
	public String getRvcontent() {
		return rvcontent;
	}
	public void setRvcontent(String rvcontent) {
		this.rvcontent = rvcontent;
	}
	public Timestamp getRegistdt() {
		return registdt;
	}
	public void setRegistdt(Timestamp registdt) {
		this.registdt = registdt;
	}
	public String getRegistid() {
		return registid;
	}
	public void setRegistid(String registid) {
		this.registid = registid;
	}
	public Timestamp getUpdtdt() {
		return updtdt;
	}
	public void setUpdtdt(Timestamp updtdt) {
		this.updtdt = updtdt;
	}
	public String getUpdtid() {
		return updtid;
	}
	public void setUpdtid(String updtid) {
		this.updtid = updtid;
	}
	public Float getRvscore() {
		return rvscore;
	}
	public void setRvscore(Float rvscore) {
		this.rvscore = rvscore;
	}
	public String getMoviecode() {
		return moviecode;
	}
	public void setMoviecode(String moviecode) {
		this.moviecode = moviecode;
	}

    
	
}
