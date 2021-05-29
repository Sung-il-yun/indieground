package com.indieground.movie.reply.model;

import java.sql.Timestamp;

public class ReplyVO {

	// 순번 
    private Integer sn;
    // 회원번호 
    private String userid;
    // 댓글내용 
    private String reply;
    // 평점 
    private Float score;
    // 영화코드 
    private String moviecode;
    // 등록일자 
    private Timestamp registdt;
    // 수정일자 
    private Timestamp updtdt;
    // 수정자 
    private String updtid;
    
	public Integer getSn() {
		return sn;
	}
	public void setSn(Integer sn) {
		this.sn = sn;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public Float getScore() {
		return score;
	}
	public void setScore(Float score) {
		this.score = score;
	}
	public String getMoviecode() {
		return moviecode;
	}
	public void setMoviecode(String moviecode) {
		this.moviecode = moviecode;
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
	public String getUpdtid() {
		return updtid;
	}
	public void setUpdtid(String updtid) {
		this.updtid = updtid;
	}

    
}
