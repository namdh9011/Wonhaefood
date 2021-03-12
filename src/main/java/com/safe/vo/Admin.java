package com.safe.vo;
public class Admin {
	int num;
	int code;
	String id;
	String maker;
	String material;
	String comment;
	String img;
	
	@Override
	public String toString() {
		return "admin [num=" + num + ", code=" + code + ", id=" + id + ", maker=" + maker + ", material=" + material
				+ ", comment=" + comment + ", img=" + img + "]";
	}
	public Admin() { }
	public Admin(int num, int code, String id, String maker, String material, String comment, String img) {
		this.num = num;
		this.code = code;
		this.id = id;
		this.maker = maker;
		this.material = material;
		this.comment = comment;
		this.img = img;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public int getCode() {
		return code;
	}
	public void setCode(int code) {
		this.code = code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getMaker() {
		return maker;
	}
	public void setMaker(String maker) {
		this.maker = maker;
	}
	public String getMaterial() {
		return material;
	}
	public void setMaterial(String material) {
		this.material = material;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
