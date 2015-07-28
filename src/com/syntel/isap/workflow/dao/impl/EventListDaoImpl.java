package com.syntel.isap.workflow.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syntel.isap.workflow.bean.*;
import com.syntel.isap.workflow.dao.*;
import com.syntel.isap.workflow.mapper.EventListMapper;


@Service("eventListDao")
public class EventListDaoImpl implements IEventListDao{

	@Autowired
	private EventListMapper eventListmapper;

	public List<EventListBean> getEventList() throws Exception {
		return eventListmapper.getEventList();
	}

	public List<EventListBean> getEventCompleteList() throws Exception {
		return eventListmapper.getEventCompleteList();
	}
	
	public int getEventCount() {
		return eventListmapper.getEventCount();
	}

}
