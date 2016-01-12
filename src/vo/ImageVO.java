package vo;

public class ImageVO {
	private long id;
	private UserMasterVO user_id;
	private String path;
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public UserMasterVO getUser_id() {
		return user_id;
	}
	public void setUser_id(UserMasterVO user_id) {
		this.user_id = user_id;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	

}
