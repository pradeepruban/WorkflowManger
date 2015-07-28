package com.syntel.isap.workflow.controller;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.syntel.isap.workflow.bean.GroupBean;
import com.syntel.isap.workflow.bean.GroupWFBean;
import com.syntel.isap.workflow.bean.WorkflowMasterBean;
import com.syntel.isap.workflow.service.IEventListService;
import com.syntel.isap.workflow.service.IGroupService;
import com.syntel.isap.workflow.service.IServicesService;
import com.syntel.isap.workflow.service.IWorkflowService;

@Controller
public class GroupController {

	@Autowired 
	private IServicesService servicesService;
	
	@Autowired
	private IEventListService eventService;
	
	@Autowired
	private IGroupService groupService;
	
	@Autowired
	private IWorkflowService workflowService;
	
	

	@RequestMapping(value = "/addGroup" , method = RequestMethod.GET)
	public String getaddGroup(HttpSession session){
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
        List<WorkflowMasterBean> workflowNamesList = new ArrayList<WorkflowMasterBean>();
		workflowNamesList = workflowService.getAllWorkflowNames();
		session.setAttribute("workflownameslist", workflowNamesList);
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		
		
		return "addGroup";
	}
	
	@RequestMapping(value = "/saveGroup" , method = RequestMethod.POST)
	public String addGroup(@ModelAttribute("grpBean")GroupBean grpBean,@RequestParam("selectedWorkflows") int[] workflowsSelected ,HttpSession session){
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
        int groupId = 0;
		int wrkflwId = 0;
		String wfName = null;
		List<Integer> wrkflwIds = new ArrayList<Integer>();
		List<GroupBean> grpBeans = new ArrayList<GroupBean>();
		List<GroupWFBean> finalGroupWorkflows = new ArrayList<GroupWFBean>();
		groupService.addgroup(grpBean);
		for(int i=0;i<workflowsSelected.length;i++){
			groupService.addGroupMapping(grpBean.getIdGroups() ,workflowsSelected[i]);
		}
		grpBeans = groupService.getGroupNames();
		Iterator<GroupBean> itr = grpBeans.iterator();
		while(itr.hasNext()){							
			GroupWFBean grpWfBean = new GroupWFBean();
			GroupBean grpBean1 = (GroupBean) itr.next();
			List<String> wrkflwNames = new ArrayList<String>();
			groupId = grpBean1.getIdGroups();	
			wrkflwIds = groupService.getwrkflwIdsFromGroupMap(groupId);					
			Iterator<Integer> itr1 = wrkflwIds.iterator();
			while(itr1.hasNext()){
				wrkflwId = itr1.next();
				wfName = groupService.getWorkflowName(wrkflwId);
				wrkflwNames.add(wfName);
			}
			grpWfBean.setGrpBean(grpBean1); 							
			grpWfBean.setWorkflowName(wrkflwNames);	
			finalGroupWorkflows.add(grpWfBean);
		}
		session.setAttribute("finalGroupWorkflows", finalGroupWorkflows);
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		return "listGroup";
	}
	
	
	

	@RequestMapping(value="/listGroupaccord",method=RequestMethod.GET)
	public String getlistGroupDetailsaccord(HttpSession session)
	{
		int groupId = 0;
		int wrkflwId = 0;
		int wrkflwwintelId = 0;
		int wrkflwunixId = 0;
		int wrkflwdatabaseId = 0;
		int wrkflwmiddlewareId = 0;
		int wrkflwvmwareId = 0;
	
	
		String wfName = null;
		List<Integer> wrkflwIds = new ArrayList<Integer>();
		List<GroupBean> grpBeans = new ArrayList<GroupBean>();
		List<GroupWFBean> finalGroupWorkflows = new ArrayList<GroupWFBean>();
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();		
		grpBeans = groupService.getGroupNames();
		Iterator<GroupBean> itr = grpBeans.iterator();
		while(itr.hasNext()){							
			GroupWFBean grpWfBean = new GroupWFBean();
			GroupBean grpBean = (GroupBean) itr.next();
			List<String> wrkflwNames = new ArrayList<String>();
			groupId = grpBean.getIdGroups();	
			wrkflwIds = groupService.getwrkflwIdsFromGroupMap(groupId);					
			Iterator<Integer> itr1 = wrkflwIds.iterator();
			while(itr1.hasNext()){
				wrkflwId = itr1.next();
				wfName = groupService.getWorkflowName(wrkflwId);
				wrkflwNames.add(wfName);
			}
			grpWfBean.setGrpBean(grpBean); 							
			grpWfBean.setWorkflowName(wrkflwNames);	
			finalGroupWorkflows.add(grpWfBean);
		}
		session.setAttribute("finalGroupWorkflows", finalGroupWorkflows);
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		grpBeans=groupService.getGroupNames();
		
		
		GroupWFBean wintelBean=new GroupWFBean();
		GroupWFBean unixBean=new GroupWFBean();
		GroupWFBean vmwareBean=new GroupWFBean();
		GroupWFBean databaseBean=new GroupWFBean();
		GroupWFBean middlewareBean=new GroupWFBean();
		
		
		
		// wintel
		List<Integer> wrkflwintelIds = new ArrayList<Integer>();
		
		wrkflwintelIds = groupService.getwrkflwIdsFromGroupMap(40);	
		
		List<String> wrkflwwintelNames = new ArrayList<String>();
		List<WorkflowMasterBean> wrkflwwintel = new ArrayList<WorkflowMasterBean>();
		Iterator<Integer> itrwintel = wrkflwintelIds.iterator();
		while(itrwintel.hasNext()){
			WorkflowMasterBean bean = new WorkflowMasterBean();
			wrkflwwintelId = itrwintel.next();
			wfName = groupService.getWorkflowName(wrkflwwintelId);
			wrkflwwintelNames.add(wfName);
			bean.setWORKFLOWID(wrkflwwintelId);
			bean.setWORKFLOWNAME(wfName);
			wrkflwwintel.add(bean);
			
		}
		
		GroupBean grpwintelBean=new GroupBean();
		grpwintelBean.setGroupName("wintel");
		wintelBean.setGrpBean(grpwintelBean); 							
		wintelBean.setWorkflowName(wrkflwwintelNames);	
		wintelBean.setWorkflow(wrkflwwintel);
		
		
		session.setAttribute("wintel", wintelBean);
		
		
		// unix
				List<Integer> wrkflunixIds = new ArrayList<Integer>();
				
				wrkflunixIds = groupService.getwrkflwIdsFromGroupMap(41);	
				
				List<String> wrkflwunixNames = new ArrayList<String>();
				List<WorkflowMasterBean> wrkflwunix = new ArrayList<WorkflowMasterBean>();
				
				Iterator<Integer> itrunix = wrkflunixIds.iterator();
				while(itrunix.hasNext()){
					WorkflowMasterBean bean = new WorkflowMasterBean();
					wrkflwunixId = itrunix.next();
					wfName = groupService.getWorkflowName(wrkflwunixId);
					wrkflwunixNames.add(wfName);
					bean.setWORKFLOWID(wrkflwunixId);
					bean.setWORKFLOWNAME(wfName);
					wrkflwunix.add(bean);
				}
				
				GroupBean grpunixBean=new GroupBean();
				grpunixBean.setGroupName("unix");
				unixBean.setGrpBean(grpunixBean); 							
				unixBean.setWorkflowName(wrkflwunixNames);
				unixBean.setWorkflow(wrkflwunix);
		
				session.setAttribute("unix", unixBean);
				
				// middleware
				List<Integer> wrkflwmdIds = new ArrayList<Integer>();
				
				wrkflwmdIds = groupService.getwrkflwIdsFromGroupMap(45);	
				
				List<String> wrkflwmdNames = new ArrayList<String>();	
				List<WorkflowMasterBean> wrkflwmw = new ArrayList<WorkflowMasterBean>();
				Iterator<Integer> itrmd = wrkflwmdIds.iterator();
				while(itrmd.hasNext()){
					WorkflowMasterBean bean = new WorkflowMasterBean();
					wfName=null;
					wrkflwmiddlewareId = itrmd.next();
					wfName = groupService.getWorkflowName(wrkflwmiddlewareId);
					wrkflwmdNames.add(wfName);
					bean.setWORKFLOWID(wrkflwmiddlewareId);
					bean.setWORKFLOWNAME(wfName);
					wrkflwmw.add(bean);
				}
				
				GroupBean grpmdBean=new GroupBean();
				grpmdBean.setGroupName("Middleware");
				middlewareBean.setGrpBean(grpmdBean); 							
				middlewareBean.setWorkflowName(wrkflwmdNames);
				middlewareBean.setWorkflow(wrkflwmw);
		
				session.setAttribute("middleware", middlewareBean);
				
				
				// Database
				List<Integer> wrkfldbdIds = new ArrayList<Integer>();
				
				wrkfldbdIds = groupService.getwrkflwIdsFromGroupMap(43);	
				List<WorkflowMasterBean> wrkflwdb = new ArrayList<WorkflowMasterBean>();
				List<String> wrkfldbdNames = new ArrayList<String>();	
				Iterator<Integer> itrdb = wrkfldbdIds.iterator();
				while(itrdb.hasNext()){
					WorkflowMasterBean bean = new WorkflowMasterBean();
					wfName=null;
					wrkflwdatabaseId = itrdb.next();
					wfName = groupService.getWorkflowName(wrkflwdatabaseId);
					wrkfldbdNames.add(wfName);
					bean.setWORKFLOWID(wrkflwdatabaseId);
					bean.setWORKFLOWNAME(wfName);
					wrkflwdb.add(bean);
				}
				
				GroupBean grpdbBean=new GroupBean();
				grpdbBean.setGroupName("Database");
				databaseBean.setGrpBean(grpdbBean); 							
				databaseBean.setWorkflowName(wrkfldbdNames);
				databaseBean.setWorkflow(wrkflwdb);
				session.setAttribute("database", databaseBean);
				
				
				// vmware
				List<Integer> wrkflvmdIds = new ArrayList<Integer>();
				
				wrkflvmdIds = groupService.getwrkflwIdsFromGroupMap(44);	
				List<WorkflowMasterBean> wrkflwvm = new ArrayList<WorkflowMasterBean>();
				List<String> wrkflvmdNames = new ArrayList<String>();	
				Iterator<Integer> itrvm = wrkflvmdIds.iterator();
				while(itrvm.hasNext()){
					WorkflowMasterBean bean = new WorkflowMasterBean();
					wfName=null;
					wrkflwvmwareId = itrvm.next();
					wfName = groupService.getWorkflowName(wrkflwvmwareId);
					wrkflvmdNames.add(wfName);
					bean.setWORKFLOWID(wrkflwvmwareId);
					bean.setWORKFLOWNAME(wfName);
					wrkflwvm.add(bean);
				}
				
				GroupBean grpvmBean=new GroupBean();
				grpvmBean.setGroupName("VMWare");
				vmwareBean.setGrpBean(grpvmBean); 							
				vmwareBean.setWorkflowName(wrkflvmdNames);
				vmwareBean.setWorkflow(wrkflwvm);
				
				session.setAttribute("vmware", vmwareBean);

		return "listGroupaccord";
	}
	
	
	
	
	@RequestMapping(value="/listGroups",method=RequestMethod.GET)
	public String getlistGroupDetails(HttpSession session)
	{
		int groupId = 0;
		int wrkflwId = 0;
		String wfName = null;
		List<Integer> wrkflwIds = new ArrayList<Integer>();
		List<GroupBean> grpBeans = new ArrayList<GroupBean>();
		List<GroupWFBean> finalGroupWorkflows = new ArrayList<GroupWFBean>();
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();		
		grpBeans = groupService.getGroupNames();
		Iterator<GroupBean> itr = grpBeans.iterator();
		while(itr.hasNext()){							
			GroupWFBean grpWfBean = new GroupWFBean();
			GroupBean grpBean = (GroupBean) itr.next();
			List<String> wrkflwNames = new ArrayList<String>();
			groupId = grpBean.getIdGroups();	
			wrkflwIds = groupService.getwrkflwIdsFromGroupMap(groupId);					
			Iterator<Integer> itr1 = wrkflwIds.iterator();
			while(itr1.hasNext()){
				wrkflwId = itr1.next();
				wfName = groupService.getWorkflowName(wrkflwId);
				wrkflwNames.add(wfName);
			}
			grpWfBean.setGrpBean(grpBean); 							
			grpWfBean.setWorkflowName(wrkflwNames);	
			finalGroupWorkflows.add(grpWfBean);
		}
		session.setAttribute("finalGroupWorkflows", finalGroupWorkflows);
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		grpBeans=groupService.getGroupNames();
		return "listGroup";
	}
	
	
	@RequestMapping(value="/more",method=RequestMethod.GET)
	public String getMoreGroupWorkflows(@RequestParam("Id")int Id,@RequestParam("Name")String Name,HttpSession session)
	{
		String wfName = null;
		int wrkflwid = 0;
		GroupBean grpBean = new GroupBean();
		GroupWFBean grpWFBean = new GroupWFBean();
		List<String> wrkflwNames = new ArrayList<String>();
		List<Integer> wrkflwIds = new ArrayList<Integer>();
		int workflowCount = workflowService.getWorkflowCount();
        int groupCount = groupService.getGroupCount();
        int eventCount = eventService.getEventCount();
        int serviceCount = servicesService.getServiceCount();
		grpBean.setIdGroups(Id);
		grpBean.setGroupName(Name);
		wrkflwIds = groupService.getwrkflwIdsFromGroupMap(Id);
		Iterator<Integer> itr1 = wrkflwIds.iterator();
		while(itr1.hasNext()){
			wrkflwid = itr1.next();
			wfName = groupService.getWorkflowName(wrkflwid);
			wrkflwNames.add(wfName);
		}
		grpWFBean.setGrpBean(grpBean);
		grpWFBean.setWorkflowName(wrkflwNames);
        session.setAttribute("workflowCount", workflowCount);
		session.setAttribute("groupCount", groupCount);
		session.setAttribute("eventCount", eventCount);
		session.setAttribute("serviceCount", serviceCount);
		session.setAttribute("GrpWFBean",grpWFBean);
		return "groupDetail";
	}
	
	
	@RequestMapping(value = "/groupCount", method = RequestMethod.GET)
    public @ResponseBody
    	int getGroupCount()throws Exception {
		int groupCount = groupService.getGroupCount();
		System.out.println("Group count:"+groupCount);
		return groupCount;
    }
}
