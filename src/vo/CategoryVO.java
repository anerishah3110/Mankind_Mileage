package vo;

import java.io.Serializable;

public class CategoryVO implements Serializable{
	private long category_id;
	private String category_name;
	private String category_description;
	private String url;
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public long getCategory_id() {
		return category_id;
	}
	public void setCategory_id(long category_id) {
		this.category_id = category_id;
	}
	public String getCategory_name() {
		return category_name;
	}
	public void setCategory_name(String category_name) {
		this.category_name = category_name;
	}
	public String getCategory_description() {
		return category_description;
	}
	public void setCategory_description(String category_description) {
		this.category_description = category_description;
	}
	
	
	
}
