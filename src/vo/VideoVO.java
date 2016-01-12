package vo;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

public class VideoVO  {
	private long video_id;
	
	private String video_name;
	private String video_desc;
	private String video_path;
	public long getVideo_id() {
		return video_id;
	}
	public void setVideo_id(long video_id) {
		this.video_id = video_id;
	}
	public String getVideo_name() {
		return video_name;
	}
	public void setVideo_name(String video_name) {
		this.video_name = video_name;
	}
	public String getVideo_desc() {
		return video_desc;
	}
	public void setVideo_desc(String video_desc) {
		this.video_desc = video_desc;
	}
	public String getVideo_path() {
		return video_path;
	}
	public void setVideo_path(String video_path) {
		this.video_path = video_path;
	}
	
	
	

}
