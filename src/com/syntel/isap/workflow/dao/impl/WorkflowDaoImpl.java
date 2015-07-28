package com.syntel.isap.workflow.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syntel.isap.workflow.bean.Host;
import com.syntel.isap.workflow.bean.HostWorkflowMapping;
import com.syntel.isap.workflow.bean.WorkflowAttributes;
import com.syntel.isap.workflow.bean.WorkflowMasterBean;
import com.syntel.isap.workflow.dao.IWorkflowDao;
import com.syntel.isap.workflow.mapper.WorkflowMapper;

@Service("workflowDao")
public class WorkflowDaoImpl implements IWorkflowDao {

	@Autowired
	private WorkflowMapper workflowMapper;
	
	public List<WorkflowMasterBean> getWorkflowDetails() {
		return workflowMapper.getWorkflowDetails();
	}

	public List<Host> getHostList() {
		return workflowMapper.getHostList();
	}


	public void addWorkflowMaster(WorkflowMasterBean addWorkflowMaster) {
		
		workflowMapper.addWorkflowMaster(addWorkflowMaster);
	}

	public void addHostMapping(HostWorkflowMapping hostWorkflowMapping) {
		
		workflowMapper.addHostMappings(hostWorkflowMapping);	
	}

	public void saveWorkflowAttribute(WorkflowAttributes attributes) {
		workflowMapper.saveWorkflowAttribute(attributes);
	}

	public List<WorkflowAttributes> getAttributeList(int workflowid) {
		return workflowMapper.getAttributeList(workflowid);
	}

	
	public void deleteWorkflowAttributes(Integer workflowId) {
		workflowMapper.deleteWorkflowAttributes(workflowId);
		
	}


	public void deleteWorkflowHosts(Integer workflowId) {
		workflowMapper.deleteWorkflowHosts(workflowId);
	}


	public void deleteWorkflow(Integer workflowId) {
		workflowMapper.deleteWorkflow(workflowId);
	}

	public WorkflowMasterBean getWorkflow(Integer workflowId) {
		return workflowMapper.getWorkflow(workflowId);
	}

	public List<Host> getHostList(Integer workflowId) {
		return workflowMapper.getHosts(workflowId);
	}

	public void updateWorkflowMaster(WorkflowMasterBean workflow) {
		workflowMapper.editWorkflowMaster(workflow);
		
	}

	public int getWorkflowCount() {
		return workflowMapper.getWorkflowCount();
	}

	

}
