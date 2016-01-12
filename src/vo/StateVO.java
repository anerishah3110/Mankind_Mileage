package vo;

import java.io.Serializable;

public class StateVO implements Serializable{
	private long state_id;
	private String state_name;
	private CountryVO country_id;
	public long getState_id() {
		return state_id;
	}
	public void setState_id(long state_id) {
		this.state_id = state_id;
	}
	public CountryVO getCountry_id() {
		return country_id;
	}
	public void setCountry_id(CountryVO country_id) {
		this.country_id = country_id;
	}
	public String getState_name() {
		return state_name;
	}
	public void setState_name(String state_name) {
		this.state_name = state_name;
	}
}
