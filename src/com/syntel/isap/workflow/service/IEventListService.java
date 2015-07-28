package com.syntel.isap.workflow.service;

import java.util.List;

import com.syntel.isap.workflow.bean.EventListBean;


public interface IEventListService {

	public List<EventListBean> getEventList() throws Exception;
	public List<EventListBean> getEventCompleteList() throws Exception;
	public int getEventCount();
}
