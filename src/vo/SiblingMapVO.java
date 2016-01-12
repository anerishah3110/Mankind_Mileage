package vo;

import java.io.Serializable;

public class SiblingMapVO implements Serializable {
private long id;
private LabRegVO s_id;
private UserMasterVO u_id;
public long getId() {
	return id;
}
public void setId(long id) {
	this.id = id;
}
public LabRegVO getS_id() {
	return s_id;
}
public void setS_id(LabRegVO s_id) {
	this.s_id = s_id;
}
public UserMasterVO getU_id() {
	return u_id;
}
public void setU_id(UserMasterVO u_id) {
	this.u_id = u_id;
}
}
