package com.syntel.isap.workflow.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.syntel.isap.workflow.bean.Host;
import com.syntel.isap.workflow.bean.WorkflowAttributes;
import com.syntel.isap.workflow.bean.WorkflowMasterBean;
import com.syntel.isap.workflow.service.IEventListService;
import com.syntel.isap.workflow.service.IGroupService;
import com.syntel.isap.workflow.service.IServicesService;
import com.syntel.isap.workflow.service.IWorkflowService;


@Controller
public class WorkflowController {
	
	
	@Autowired 
	private IServicesService servicesService;
	
	@Autowired
	private IEventListService eventService;
	
	@Autowired
	private IGroupService groupService;
	
	@Autowired
	private IWorkflowService workflowService;
	
	@RequestMapping(value="/listWorkflow",method=RequestMethod.GET)
	public String getWorkflowDetails(HttpSession session)
	{
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
        
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		List<WorkflowMasterBean> workflowMasterBeans=new ArrayList<WorkflowMasterBean>();
		workflowMasterBeans=workflowService.getWorkflowDetais();
		session.setAttribute("WorkflowMasterList", workflowMasterBeans);
		return "listWorkflow";
	}
	
	
	@RequestMapping(value="/addWorkflow",method=RequestMethod.GET)
	public String getAddWorkflow(HttpSession session)
	{
		List<Host> hostList=new ArrayList<Host>();
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
		hostList=workflowService.getHostList();
		session.setAttribute("hostList", hostList);
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		return "addWorkflow";
	}
	
	@RequestMapping(value="/saveWorkflowDetails",method=RequestMethod.POST)
	public String getSaveWorkflow(HttpSession session,@ModelAttribute(value="workflow")WorkflowMasterBean workflow,
			@RequestParam("selectedHosts") int[] hostsSelected ,@RequestParam("attributeList") String attributeList)
	{
		String[] temp;
		String delimiter = "\n";
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
        
		List<WorkflowMasterBean> workflowMasterBeans=new ArrayList<WorkflowMasterBean>();
		workflowService.addWorkflowMaster(workflow);
		for(int i=0;i<hostsSelected.length;i++){
			workflowService.addHostMapping(workflow.getWORKFLOWID(),hostsSelected[i]);
		}
		 temp = attributeList.split(delimiter);
		 System.out.println("attributList length"+temp.length);
		 for (int i =0; i < temp.length-1 ; i++){ 
			int defaultflag=0;
			int encryptFlag=0;
		  String[] tokens;
		  tokens=temp[i].split(",");
		  WorkflowAttributes attributes=new WorkflowAttributes();
		  attributes.setATTRIBUTNAME(tokens[0]);	
		  attributes.setATTRIBUTEDEFAULTVALUE(tokens[1]);
		
		  if(tokens[2].trim().equalsIgnoreCase("true")){
			  defaultflag=1;
		  }
		  if(tokens[3].trim().equalsIgnoreCase("true")){
			  encryptFlag=1;
		  }
		  attributes.setDEFAULTFLAG(defaultflag);
		  attributes.setENCRYPTFLAG(encryptFlag);  
		  attributes.setWORKFLOWID(workflow.getWORKFLOWID());
		  workflowService.saveWorkflowAttribute(attributes);
		 }
		workflowMasterBeans=workflowService.getWorkflowDetais();
		session.setAttribute("WorkflowMasterList", workflowMasterBeans);
	
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		return "listWorkflow";
	}
	
	
	
	
	@RequestMapping(value="/editWorkflowDetails",method=RequestMethod.POST)
	public String getEditWorkflow(HttpSession session,@ModelAttribute(value="workflow")WorkflowMasterBean workflow,
			@RequestParam("selectedHosts") int[] hostsSelected)
	{
		
		List<WorkflowMasterBean> workflowMasterBeans=new ArrayList<WorkflowMasterBean>();
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
		workflowService.updateWorkflowMaster(workflow);
		
	     /*     Pending   Updated Attribute list code	        */
		
		workflowService.deleteHostMapping(workflow.getWORKFLOWID());
		for(int i=0;i<hostsSelected.length;i++){
			workflowService.addHostMapping(workflow.getWORKFLOWID(),hostsSelected[i]);
		}
		workflowMasterBeans=workflowService.getWorkflowDetais();
		session.setAttribute("WorkflowMasterList", workflowMasterBeans);
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		return "listWorkflow";
	}
	
	
	
	@RequestMapping(value ="/deleteWorkflow", method = RequestMethod.GET)
	public String deleteWorkflow(@RequestParam(value = "workflowId") Integer workflowId,HttpSession session ) {
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
		workflowService.deleteWorkflow(workflowId);
		List<WorkflowMasterBean> workflowMasterBeans=new ArrayList<WorkflowMasterBean>();
		workflowMasterBeans=workflowService.getWorkflowDetais();
		session.setAttribute("WorkflowMasterList", workflowMasterBeans);
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		return "listWorkflow";
	
	}
	
	@RequestMapping(value ="/editWorkflow", method = RequestMethod.GET)
	public String editWorkflow(@RequestParam(value = "workflowId") Integer workflowId,HttpSession session ) {
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
		WorkflowMasterBean editWorkflowBean=workflowService.editWorkflow(workflowId);
		session.setAttribute("WorkflowEditList", editWorkflowBean);
		List<Host> hostList=new ArrayList<Host>();
		hostList=workflowService.getHostList();
		session.setAttribute("hostList", hostList);
	    session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		return "editWorkflow";
	
	}
	
	@RequestMapping(value = "/workflowCount", method = RequestMethod.GET)
    public @ResponseBody int getWorkflowCount(){
		int workflowCount = workflowService.getWorkflowCount();
		System.out.println("Workflow count:"+workflowCount);
		return workflowCount;
    }
	
}
