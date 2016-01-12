package vo;

public class ReimbursementVO {
	private long id;
	private String name;
	private String address;
	private String relation;
	private String email;
	private String contact_no;
	private UserMasterVO user_id;
	public UserMasterVO getUser_id() {
		return user_id;
	}
	public void setUser_id(UserMasterVO user_id) {
		this.user_id = user_id;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	

}
