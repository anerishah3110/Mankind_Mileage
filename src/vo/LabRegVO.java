package vo;
import java.io.Serializable;

public class LabRegVO implements Serializable{
	private Long s_id;
	private Long u_id;
	private String name;
	private PackageVO package_id;
	
	private String contact_no;
	private String email;

	public Long getS_id() {
		return s_id;
	}
	public void setS_id(Long s_id) {
		this.s_id = s_id;
	}
	public Long getU_id() {
		return u_id;
	}
	public void setU_id(Long u_id) {
		this.u_id = u_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	
	public PackageVO getPackage_id() {
		return package_id;
	}
	public void setPackage_id(PackageVO package_id) {
		this.package_id = package_id;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


}
