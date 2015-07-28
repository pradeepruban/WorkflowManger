package com.syntel.isap.workflow.service;

import java.util.List;

import com.syntel.isap.workflow.bean.Host;
import com.syntel.isap.workflow.bean.WorkflowAttributes;
import com.syntel.isap.workflow.bean.WorkflowMasterBean;

public interface IWorkflowService {
	
	public List<WorkflowMasterBean> getWorkflowDetais();

	public List<Host> getHostList();

	public void addWorkflowMaster(WorkflowMasterBean workflow);

	public void addHostMapping(int workflowid, int hostId);

	public void saveWorkflowAttribute(WorkflowAttributes attributes);

	public void deleteWorkflow(Integer workflowId);

	public WorkflowMasterBean editWorkflow(Integer workflowId);

	public void updateWorkflowMaster(WorkflowMasterBean workflow);

	public void deleteHostMapping(int workflowid);

	public int getWorkflowCount();

	public List<WorkflowMasterBean> getAllWorkflowNames();

}
