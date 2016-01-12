package vo;

import java.io.Serializable;

public class SubcatVO implements Serializable{
	private long subcat_id;
	private String subcat_name;
	private String subcat_desc;
	private CategoryVO category_id;
	private String url;
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public long getSubcat_id() {
		return subcat_id;
	}
	public void setSubcat_id(long subcat_id) {
		this.subcat_id = subcat_id;
	}
	public String getSubcat_name() {
		return subcat_name;
	}
	public void setSubcat_name(String subcat_name) {
		this.subcat_name = subcat_name;
	}
	public String getSubcat_desc() {
		return subcat_desc;
	}
	public void setSubcat_desc(String subcat_desc) {
		this.subcat_desc = subcat_desc;
	}
	public CategoryVO getCategory_id() {
		return category_id;
	}
	public void setCategory_id(CategoryVO category_id) {
		this.category_id = category_id;
	}
	
	}

