package com.syntel.isap.workflow.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.syntel.isap.workflow.bean.IsapWmsServicesMasterBean;
import com.syntel.isap.workflow.service.IEventListService;
import com.syntel.isap.workflow.service.IGroupService;
import com.syntel.isap.workflow.service.IServicesService;
import com.syntel.isap.workflow.service.IWorkflowService;


@Controller
public class ServicesMasterController {

	@Autowired 
	private IServicesService servicesService;
	
	@Autowired
	private IEventListService eventService;
	
	@Autowired
	private IGroupService groupService;
	
	@Autowired
	private IWorkflowService workflowService;
	
	@RequestMapping(value = "/services", method = RequestMethod.GET)
	public String getCreateInstance(HttpSession session) throws Exception {
		List<IsapWmsServicesMasterBean> IsapWmsServicesMasterBeans=new ArrayList<IsapWmsServicesMasterBean>();
		IsapWmsServicesMasterBeans=servicesService.getServiceDetails();
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
        
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		session.setAttribute("ServiceList", IsapWmsServicesMasterBeans);
		return "services";
	}
	
	
	
	@RequestMapping(value = "/serviceCount", method = RequestMethod.GET)
    public @ResponseBody int getServicesCount(){
		int servicesCount = servicesService.getServiceCount();
		System.out.println("Services count:"+servicesCount);
		return servicesCount;
    }
	
}
