package com.syntel.isap.workflow.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syntel.isap.workflow.bean.GroupBean;
import com.syntel.isap.workflow.bean.GroupWFBean;
import com.syntel.isap.workflow.bean.GroupWorkflowMapping;
import com.syntel.isap.workflow.dao.IGroupDao;
import com.syntel.isap.workflow.mapper.GroupMapper;

@Service("groupDao")
public class GroupDaoImpl implements IGroupDao{

	@Autowired
	private GroupMapper groupMapper;
	
	public void addGroup(GroupBean grpBean) {
		groupMapper.addGroup(grpBean);
	}

	

	public List<GroupBean> getGroupNames() {
		List<GroupBean> grpBeans=new ArrayList<GroupBean>();
		grpBeans=groupMapper.getGroupNames();
		return grpBeans;
	}


	public List<String> getWorkflowNames(int id) {
		List<String> wfNames=new ArrayList<String>();
		wfNames=groupMapper.getWorkflowNames(id);
		return wfNames;
	}

	public int getGroupCount() {
		return groupMapper.getGroupCount();
	}




	public List<Integer> getwrkflwIdsFromGroupMap(int groupId) {
		return groupMapper.getwrkflwIdsFromGroupMap(groupId);
	}



	public void addGroupMapping(GroupWorkflowMapping groupWorkflowMapping) {
		groupMapper.addGroupMapping(groupWorkflowMapping);
	}



	public String getWorkflowName(int workflowId) {
		return groupMapper.getWorkflowName(workflowId);
	}

}
