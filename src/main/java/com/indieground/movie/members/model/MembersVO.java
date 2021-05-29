package com.indieground.movie.members.model;

import java.sql.Timestamp;

public class MembersVO {

	 // 순번 
    private Integer sn;
    // 아이디 
    private String userid;
    // 비밀번호 
    private String pwd;
    // 이름 
    private String usernm;
    // 전화번호 
    private String telno;
    // 이메일 
    private String email;
    // 회원차단여부 
    private String userblock;
    // 댓글차단여부 
    private String replyblock;
    // 회원가입일자 
    private Timestamp registdt;
    // 수정일자 
    private Timestamp updtdt;
    // 수정유형 
    private String updttype;
    // 권한 
    private String userpower;
    
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
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getUsernm() {
		return usernm;
	}
	public void setUsernm(String usernm) {
		this.usernm = usernm;
	}
	public String getTelno() {
		return telno;
	}
	public void setTelno(String telno) {
		this.telno = telno;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserblock() {
		return userblock;
	}
	public void setUserblock(String userblock) {
		this.userblock = userblock;
	}
	public String getReplyblock() {
		return replyblock;
	}
	public void setReplyblock(String replyblock) {
		this.replyblock = replyblock;
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
	public String getUpdttype() {
		return updttype;
	}
	public void setUpdttype(String updttype) {
		this.updttype = updttype;
	}
	public String getUserpower() {
		return userpower;
	}
	public void setUserpower(String userpower) {
		this.userpower = userpower;
	}
    
    
	
}
