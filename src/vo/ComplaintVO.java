package vo;

public class ComplaintVO {
private long id;
private String message;
private UserMasterVO user_id;
private String status;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public String getMessage() {
	return message;
}
public void setMessage(String message) {
	this.message = message;
}
public UserMasterVO getUser_id() {
	return user_id;
}
public void setUser_id(UserMasterVO user_id) {
	this.user_id = user_id;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
}
