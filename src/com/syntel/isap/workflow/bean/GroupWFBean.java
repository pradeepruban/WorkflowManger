package com.syntel.isap.workflow.bean;

import java.io.Serializable;
import java.util.List;

public class GroupWFBean implements Serializable {
	
		/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		
	private GroupBean GrpBean;
	
	private List<WorkflowMasterBean> workflow;
	
	private List<String> WorkflowName;
	
	public List<WorkflowMasterBean> getWorkflow() {
		return workflow;
	}
	public void setWorkflow(List<WorkflowMasterBean> workflow) {
		this.workflow = workflow;
	}
		
		public GroupBean getGrpBean() {
			return GrpBean;
		}
		public void setGrpBean(GroupBean grpBean) {
			GrpBean = grpBean;
		}
		public List<String> getWorkflowName() {
			return WorkflowName;
		}
		public void setWorkflowName(List<String> workflowName) {
			WorkflowName = workflowName;
		}


}
