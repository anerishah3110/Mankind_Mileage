package vo;

import java.sql.Date;

public class DonationVO {

	private long id;
	private String address;
	private CountryVO country_id;
	private StateVO state_id;
	private CityVO city_id;
	private String email_id;
	private String contact_no;
	private UserMasterVO user_id;
	private String duedate;
	private String hospital_name;
	private String hospital_addr;
	private String doc_name;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	public CountryVO getCountry_id() {
		return country_id;
	}
	public void setCountry_id(CountryVO country_id) {
		this.country_id = country_id;
	}
	public StateVO getState_id() {
		return state_id;
	}
	public void setState_id(StateVO state_id) {
		this.state_id = state_id;
	}
	public CityVO getCity_id() {
		return city_id;
	}
	public void setCity_id(CityVO city_id) {
		this.city_id = city_id;
	}
	public String getEmail_id() {
		return email_id;
	}
	public void setEmail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public UserMasterVO getUser_id() {
		return user_id;
	}
	public void setUser_id(UserMasterVO user_id) {
		this.user_id = user_id;
	}
	public String getDuedate() {
		return duedate;
	}
	public void setDuedate(String duedate) {
		this.duedate = duedate;
	}
	public String getHospital_name() {
		return hospital_name;
	}
	public void setHospital_name(String hospital_name) {
		this.hospital_name = hospital_name;
	}
	public String getHospital_addr() {
		return hospital_addr;
	}
	public void setHospital_addr(String hospital_addr) {
		this.hospital_addr = hospital_addr;
	}
	public String getDoc_name() {
		return doc_name;
	}
	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}
}
