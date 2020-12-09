package com.project.draw.member;

public class MemberVO {

	private String id;
	private String password;
	private String email;
	private String phone;
	private String name;
	private int gender;
	private String birth;
	private String address;
	
	//getter and setter
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	//toString
	@Override
	public String toString() {
		return "Member [id=" + id + ", password=" + password + ", email=" + email + ", phone=" + phone + ", name="
				+ name + ", gender=" + gender + ", birth=" + birth + ", address=" + address + "]";
	}
	

	
	
}
