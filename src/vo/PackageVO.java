package vo;

import java.io.Serializable;

public class PackageVO implements Serializable{
	private long package_id;
	public long getPackage_id() {
		return package_id;
	}
	public void setPackage_id(long package_id) {
		this.package_id = package_id;
	}
	private String package_name;
	private String package_description;
	private int package_duration;
	private int package_price;
	private String package_type;
	public String getPackage_type() {
		return package_type;
	}
	public void setPackage_type(String package_type) {
		this.package_type = package_type;
	}
	private CategoryVO category_id;
	
	public String getPackage_name() {
		return package_name;
	}
	public void setPackage_name(String package_name) {
		this.package_name = package_name;
	}
	public String getPackage_description() {
		return package_description;
	}
	public void setPackage_description(String package_des) {
		this.package_description = package_des;
	}
	public int getPackage_duration() {
		return package_duration;
	}
	public void setPackage_duration(int package_duration) {
		this.package_duration = package_duration;
	}
	public int getPackage_price() {
		return package_price;
	}
	public void setPackage_price(int package_price) {
		this.package_price = package_price;
	}
	public CategoryVO getCategory_id() {
		return category_id;
	}
	public void setCategory_id(CategoryVO category_id) {
		this.category_id = category_id;
	}
	

}
