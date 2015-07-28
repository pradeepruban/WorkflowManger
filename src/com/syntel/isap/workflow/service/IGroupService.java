package com.syntel.isap.workflow.service;

import java.util.List;

import com.syntel.isap.workflow.bean.GroupBean;
import com.syntel.isap.workflow.bean.GroupWFBean;

public interface IGroupService {

	public void addgroup(GroupBean grpBean);

	public List<GroupBean> getGroupNames();

	public List<String> getWorkflowNames(int id);

	public int getGroupCount();

	public void addGroupMapping(int idGroups, int workflowId);

	public List<Integer> getwrkflwIdsFromGroupMap(int groupId);

	public String getWorkflowName(int wrkflwId);


	
	

}
