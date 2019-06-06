package com.zyg.pojo;

import java.util.List;

public class UserVO {
	private List<User> listuser;

	public List<User> getListuser() {
		return listuser;
	}

	public void setListuser(List<User> listuser) {
		this.listuser = listuser;
	}

	@Override
	public String toString() {
		return "UserVO [listuser=" + listuser + "]";
	}

	
	
}
