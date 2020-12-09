package com.project.draw.items;

public class ItemsVO {

	private String brand_code;
	private String model_name;
	private String model_code;
	private int price;
	private int s_size;
	private String collaboration;
	private int draw_date;
	private int announce_date;
	private int purchase_date;
	private String site_code;
	
	//getter and setter
	public String getBrand_code() {
		return brand_code;
	}
	public void setBrand_code(String brand_code) {
		this.brand_code = brand_code;
	}
	public String getModel_name() {
		return model_name;
	}
	public void setModel_name(String model_name) {
		this.model_name = model_name;
	}
	public String getModel_code() {
		return model_code;
	}
	public void setModel_code(String model_code) {
		this.model_code = model_code;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getS_size() {
		return s_size;
	}
	public void setS_size(int s_size) {
		this.s_size = s_size;
	}
	public String getCollaboration() {
		return collaboration;
	}
	public void setCollaboration(String collaboration) {
		this.collaboration = collaboration;
	}
	public int getDraw_date() {
		return draw_date;
	}
	public void setDraw_date(int draw_date) {
		this.draw_date = draw_date;
	}
	public int getAnnounce_date() {
		return announce_date;
	}
	public void setAnnounce_date(int announce_date) {
		this.announce_date = announce_date;
	}
	public int getPurchase_date() {
		return purchase_date;
	}
	public void setPurchase_date(int purchase_date) {
		this.purchase_date = purchase_date;
	}
	public String getSite_code() {
		return site_code;
	}
	public void setSite_code(String site_code) {
		this.site_code = site_code;
	}
	
	//toString
	@Override
	public String toString() {
		return "Items [brand_code=" + brand_code + ", model_name=" + model_name + ", model_code=" + model_code
				+ ", price=" + price + ", s_size=" + s_size + ", collaboration=" + collaboration + ", draw_date="
				+ draw_date + ", announce_date=" + announce_date + ", purchase_date=" + purchase_date + ", site_code="
				+ site_code + "]";
	}
	
	
}