package com.syntel.isap.workflow.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.syntel.isap.workflow.service.IEventListService;
import com.syntel.isap.workflow.service.IGroupService;
import com.syntel.isap.workflow.service.IServicesService;
import com.syntel.isap.workflow.service.IWorkflowService;

@Controller
public class NavigationController {
	
	@Autowired 
	private IServicesService servicesService;
	
	@Autowired
	private IEventListService eventService;
	
	@Autowired
	private IGroupService groupService;
	
	@Autowired
	private IWorkflowService workflowService;
	
	@RequestMapping(value="/logout",method=RequestMethod.GET)
	public String getLogin()
	{
		 return "redirect:index.jsp";
	}
	
	@RequestMapping(value="/dashboard",method=RequestMethod.GET)
	public String getDashboard(HttpSession session)
	{
		
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
        
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		return "dashboard";
	}
	
}
