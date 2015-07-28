package com.syntel.isap.workflow.dao;

import java.util.List;

import com.syntel.isap.workflow.bean.*;
public interface IEventListDao {

	
	public List<EventListBean> getEventList() throws Exception;
	public List<EventListBean> getEventCompleteList() throws Exception;
	public int getEventCount();
}
