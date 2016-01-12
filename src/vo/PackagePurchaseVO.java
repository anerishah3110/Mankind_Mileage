package vo;

public class PackagePurchaseVO {
	private long id;
	private UserMasterVO user_id;
	private PackageVO package_id;
	private String date;
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
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
	public PackageVO getPackage_id() {
		return package_id;
	}
	public void setPackage_id(PackageVO package_id) {
		this.package_id = package_id;
	}
	
}
