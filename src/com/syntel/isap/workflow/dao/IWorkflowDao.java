package com.syntel.isap.workflow.dao;

import java.util.List;

import com.syntel.isap.workflow.bean.Host;
import com.syntel.isap.workflow.bean.HostWorkflowMapping;
import com.syntel.isap.workflow.bean.WorkflowAttributes;
import com.syntel.isap.workflow.bean.WorkflowMasterBean;

public interface IWorkflowDao {
	
	public List<WorkflowMasterBean> getWorkflowDetails();

	public List<Host> getHostList();

	public void addWorkflowMaster(WorkflowMasterBean workflow);

	public void addHostMapping(HostWorkflowMapping hostWorkflowMapping);

	public void saveWorkflowAttribute(WorkflowAttributes attributes);

	public List<WorkflowAttributes> getAttributeList(int workflowid);

	public void deleteWorkflowAttributes(Integer workflowId);

	public void deleteWorkflowHosts(Integer workflowId);

	public void deleteWorkflow(Integer workflowId);

	public WorkflowMasterBean getWorkflow(Integer workflowId);

	public List<Host> getHostList(Integer workflowId);

	public void updateWorkflowMaster(WorkflowMasterBean workflow);

	public int getWorkflowCount();



}
