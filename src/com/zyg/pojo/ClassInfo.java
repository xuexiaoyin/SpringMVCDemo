package com.zyg.pojo;

public class ClassInfo {
	private int id;
	private String classNum;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getClassNum() {
		return classNum;
	}
	public void setClassNum(String classNum) {
		this.classNum = classNum;
	}
	@Override
	public String toString() {
		return "Class [id=" + id + ", classNum=" + classNum + "]";
	}
	
}
