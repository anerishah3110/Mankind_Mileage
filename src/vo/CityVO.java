package vo;

import java.io.Serializable;

public class CityVO implements Serializable{
	private long city_id;
	private String city_name;
	private CountryVO country_id;
	private StateVO state_id;
	public long getCity_id() {
		return city_id;
	}
	public void setCity_id(long city_id) {
		this.city_id = city_id;
	}
	public String getCity_name() {
		return city_name;
	}
	public void setCity_name(String city_name) {
		this.city_name = city_name;
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
	
}
