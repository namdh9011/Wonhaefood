package com.safe.vo;

public class MyFood {

	protected String id;
	protected int code;
	protected String img;
	protected String name;
	protected int count;
	protected String allergy;
	protected String check;
	
	public MyFood() {}
	
	
	
	public MyFood(String id, int code) {
		this.id = id;
		this.code = code;
	}
	public MyFood(String id, int code, int count) {
		this.id = id;
		this.code = code;
		this.count = count;
	}



	public String getCheck() {
		return check;
	}



	public void setCheck(String check) {
		this.check = check;
	}



	public MyFood(String id, int code, String img, String name, int count, String allergy) {
		super();
		this.id = id;
		this.code = code;
		this.img = img;
		this.name = name;
		this.count = count;
		this.allergy = allergy;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getAllergy() {
		return allergy;
	}

	public void setAllergy(String allergy) {
		this.allergy = allergy;
	}
	
	
	
	
	
}
