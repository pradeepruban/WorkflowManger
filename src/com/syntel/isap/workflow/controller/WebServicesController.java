package com.syntel.isap.workflow.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ode.pmapi.InstanceManagementPortType;
import org.apache.ode.pmapi.InstanceManagementService;
import org.apache.ode.pmapi.ProcessManagementPortType;
import org.apache.ode.pmapi.ProcessManagementService;
import org.apache.ode.pmapi.types._2006._08._02.TInstanceInfo;
import org.apache.ode.pmapi.types._2006._08._02.TInstanceInfoList;
import org.apache.ode.pmapi.types._2006._08._02.TProcessInfo;
import org.apache.ode.pmapi.types._2006._08._02.TProcessInfoList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.syntel.isap.workflow.service.IEventListService;
import com.syntel.isap.workflow.service.IGroupService;
import com.syntel.isap.workflow.service.IServicesService;
import com.syntel.isap.workflow.service.IWorkflowService;


@Controller
public class WebServicesController {

	@Autowired 
	private IServicesService servicesService;
	
	@Autowired
	private IEventListService eventService;
	
	@Autowired
	private IGroupService groupService;
	
	@Autowired
	private IWorkflowService workflowService;
	
	@RequestMapping(value = "/allProcesses", method = RequestMethod.GET)
	public String getAllProcesses(HttpSession session) throws Exception {
		
	
		ProcessManagementService managementService=new ProcessManagementService();
		ProcessManagementPortType portType=managementService.getProcessManagementPort();
		TProcessInfoList processInfoList= portType.listAllProcesses();
		List<TProcessInfo> processInfos=processInfoList.getProcessInfo();
		
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
        
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		session.setAttribute("processList", processInfos);
		return "allProcesses";
	}
	

	@RequestMapping(value = "/allInstances", method = RequestMethod.GET)
	public String getAllInstances(HttpSession session) throws Exception {

		InstanceManagementService service=new InstanceManagementService();
		InstanceManagementPortType instanceManagementPortType=service.getInstanceManagementPort();
		TInstanceInfoList infoList= instanceManagementPortType.listAllInstances();
		List<TInstanceInfo> list=infoList.getInstanceInfo();
		
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
        
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		session.setAttribute("instanceList", list);
		return "allInstances";
	}
	
}
