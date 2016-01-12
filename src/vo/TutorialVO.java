package vo;

public class TutorialVO {
private long tutorial_id;
	
	private String tutorial_name;
	private String tutorial_desc;
	private String tutorial_path;
	public long getTutorial_id() {
		return tutorial_id;
	}
	public void setTutorial_id(long tutorial_id) {
		this.tutorial_id = tutorial_id;
	}
	public String getTutorial_name() {
		return tutorial_name;
	}
	public void setTutorial_name(String tutorial_name) {
		this.tutorial_name = tutorial_name;
	}
	public String getTutorial_desc() {
		return tutorial_desc;
	}
	public void setTutorial_desc(String tutorial_desc) {
		this.tutorial_desc = tutorial_desc;
	}
	public String getTutorial_path() {
		return tutorial_path;
	}
	public void setTutorial_path(String tutorial_path) {
		this.tutorial_path = tutorial_path;
	}

}
