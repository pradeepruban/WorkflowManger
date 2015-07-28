package com.syntel.isap.workflow.dao;

import java.util.List;

import com.syntel.isap.workflow.bean.GroupBean;
import com.syntel.isap.workflow.bean.GroupWFBean;
import com.syntel.isap.workflow.bean.GroupWorkflowMapping;

public interface IGroupDao {

	public void addGroup(GroupBean grpBean);

	public List<GroupBean> getGroupNames();

	public List<String> getWorkflowNames(int id);

	public int getGroupCount();

	public List<Integer> getwrkflwIdsFromGroupMap(int groupId);

	public void addGroupMapping(GroupWorkflowMapping groupWorkflowMapping);

	public String getWorkflowName(int workflowId);

	

}
