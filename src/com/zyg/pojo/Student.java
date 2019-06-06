package com.zyg.pojo;

import java.util.Date;

public class Student {
	private int id;
	private String name;
	private String studentNum;
	private Date inSchDate; //入学时间
	private ClassInfo classInfo;  //学生所在班级
	
	
	public Date getInSchDate() {
		return inSchDate;
	}
	public void setInSchDate(Date inSchDate) {
		this.inSchDate = inSchDate;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getStudentNum() {
		return studentNum;
	}
	public void setStudentNum(String studentNum) {
		this.studentNum = studentNum;
	}
	public ClassInfo getClassInfo() {
		return classInfo;
	}
	public void setClassInfo(ClassInfo classInfo) {
		this.classInfo = classInfo;
	}
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", studentNum=" + studentNum + ", inSchDate=" + inSchDate
				+ ", classInfo=" + classInfo + "]";
	}
	
	 
	
	
}
