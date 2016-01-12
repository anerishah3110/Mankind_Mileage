package vo;

public class EventVO {
	private long event_id;
	public long getEvent_id() {
		return event_id;
	}
	public void setEvent_id(long event_id) {
		this.event_id = event_id;
	}
	private String event_name;
	private String event_description;
	private String event_place;
	public String getEvent_place() {
		return event_place;
	}
	public void setEvent_place(String event_place) {
		this.event_place = event_place;
	}
	public String getEvent_date() {
		return event_date;
	}
	public void setEvent_date(String event_date) {
		this.event_date = event_date;
	}
	private String event_date;
	public String getEvent_name() {
		return event_name;
	}
	public void setEvent_name(String event_name) {
		this.event_name = event_name;
	}
	public String getEvent_description() {
		return event_description;
	}
	public void setEvent_description(String event_description) {
		this.event_description = event_description;
	}
	

}
