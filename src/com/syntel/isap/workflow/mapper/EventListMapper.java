package com.syntel.isap.workflow.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;


import com.syntel.isap.workflow.bean.EventListBean;

public interface EventListMapper {

	final String GET_Eventlist_progress = "select EVENTSUMMARY ,STATUS from isap_wms_txnevents where STATUS ='PROGRESS'";
	
	final String GET_Eventlist_completed = "select EVENTSUMMARY ,STATUS,DATETIMETRIGGERED from isap_wms_txnevents where STATUS ='COMPLETED'";
	
	final String GET_EventCount="select count(*) from isap_wms_txnevents";
	
	
	@Select(GET_Eventlist_progress)
	public List<EventListBean> getEventList() throws Exception;
	
	@Select(GET_Eventlist_completed)
	public List<EventListBean> getEventCompleteList() throws Exception;
	
	@Select(GET_EventCount)
	public int getEventCount();
	
}
