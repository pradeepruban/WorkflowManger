package com.syntel.isap.workflow.bean;

import java.io.Serializable;
import java.sql.Time;

public class EventListBean implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int event_id;
	private String eventsummary;
	Time time;
	private String status;

	public String getEventsummary() {
		return eventsummary;
	}

	public void setEventsummary(String eventsummary) {
		this.eventsummary = eventsummary;
	}

	String DATETIMETRIGGERED;

	public String getDATETIMETRIGGERED() {
		return DATETIMETRIGGERED;
	}

	public void setDATETIMETRIGGERED(String dATETIMETRIGGERED) {
		DATETIMETRIGGERED = dATETIMETRIGGERED;
	}



	public int getEvent_id() {
		return event_id;
	}

	public void setEvent_id(int event_id) {
		this.event_id = event_id;
	}

	public Time getTime() {
		return time;
	}

	public void setTime(Time time) {
		this.time = time;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

}
