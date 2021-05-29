package com.indieground.movie.actorInfo.model;

public class ActorInfoVO {
	// 순번 
    private Integer sn;
    // 배우 
    private String actor;
    // 영화코드 
    private String moviecode;
    // 자기소개 
    private String profile;
    // 사진 
    private String photolink;
    // 성별 
    private String genger;
    // 나이
    private String age;
    // 국적 
    private String contury;
    // 감독여부 
    private String directorat;
	
    public Integer getSn() {
		return sn;
	}
	public void setSn(Integer sn) {
		this.sn = sn;
	}
	public String getActor() {
		return actor;
	}
	public void setActor(String actor) {
		this.actor = actor;
	}
	public String getMoviecode() {
		return moviecode;
	}
	public void setMoviecode(String moviecode) {
		this.moviecode = moviecode;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getPhotolink() {
		return photolink;
	}
	public void setPhotolink(String photolink) {
		this.photolink = photolink;
	}
	public String getGenger() {
		return genger;
	}
	public void setGenger(String genger) {
		this.genger = genger;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getContury() {
		return contury;
	}
	public void setContury(String contury) {
		this.contury = contury;
	}
	public String getDirectorat() {
		return directorat;
	}
	public void setDirectorat(String directorat) {
		this.directorat = directorat;
	}
	
    
}
