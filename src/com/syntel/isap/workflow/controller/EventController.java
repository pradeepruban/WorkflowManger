package com.syntel.isap.workflow.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.syntel.isap.workflow.bean.DataTableObject;
import com.syntel.isap.workflow.bean.EventListBean;
import com.syntel.isap.workflow.service.IEventListService;
import com.syntel.isap.workflow.service.IGroupService;
import com.syntel.isap.workflow.service.IServicesService;
import com.syntel.isap.workflow.service.IWorkflowService;

@Controller
public class EventController {
	
	@Autowired 
	private IServicesService servicesService;
	
	@Autowired
	private IEventListService eventService;
	
	@Autowired
	private IGroupService groupService;
	
	@Autowired
	private IWorkflowService workflowService;
	
	

	@RequestMapping(value = "/events", method = RequestMethod.GET)
	public String getAdminStackList(HttpServletRequest request,
			HttpSession session) throws Exception {
		List<EventListBean> eventsList = new ArrayList<EventListBean>();
		List<EventListBean> eventsList1 = new ArrayList<EventListBean>();
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
		eventsList = eventService.getEventList();
		// action progress-->completed
		
		eventsList1 = eventService.getEventCompleteList();

        
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		session.setAttribute("listEvent", eventsList);
		session.setAttribute("listCompletedEvent", eventsList1);
		return "events";

	}
	
	
	@RequestMapping(value = "/eventsList2", method = RequestMethod.GET)
	public @ResponseBody String getEventProgressList(HttpServletResponse response) throws Exception {
		
		response.setContentType("application/json");
		List<EventListBean> listEvent = eventService.getEventList();
		DataTableObject dataTableObject = new DataTableObject();
		dataTableObject.setAaData(listEvent);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(dataTableObject);
	
		return json;
		
 
	}
	
	@RequestMapping(value = "/eventsList3", method = RequestMethod.GET)
	public @ResponseBody String getEventCompleteList(HttpServletResponse response) throws Exception {
		
		response.setContentType("application/json");
		List<EventListBean> listEvent = eventService.getEventCompleteList();
		DataTableObject dataTableObject = new DataTableObject();
		dataTableObject.setAaData(listEvent);
		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json = gson.toJson(dataTableObject);
	
		return json;
		
 
	}
	
	
	@RequestMapping(value = "/eventCount", method = RequestMethod.GET)
    public @ResponseBody int getEventCount(){
		int eventCount = eventService.getEventCount();
		System.out.println("Events count:"+eventCount);
		return eventCount;
    }
 
}
