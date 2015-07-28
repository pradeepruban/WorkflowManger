package com.syntel.isap.workflow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import com.syntel.isap.workflow.bean.EventListBean;
import com.syntel.isap.workflow.dao.*;

import com.syntel.isap.workflow.service.*;


@Service("eventService")
public class EventListServiceImpl implements IEventListService{
	
	@Autowired 
	private IEventListDao eventListDao;
	
	
	@Transactional
	public List<EventListBean> getEventList() throws Exception {
		return eventListDao.getEventList();
	}
	
	@Transactional
	public List<EventListBean> getEventCompleteList() throws Exception {
		return eventListDao.getEventCompleteList() ;
	}
	@Transactional
	public int getEventCount() {
		return eventListDao.getEventCount();
	}

	
}
