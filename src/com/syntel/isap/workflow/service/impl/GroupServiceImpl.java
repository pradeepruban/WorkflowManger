package com.syntel.isap.workflow.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.syntel.isap.workflow.bean.GroupBean;
import com.syntel.isap.workflow.bean.GroupWFBean;
import com.syntel.isap.workflow.bean.GroupWorkflowMapping;
import com.syntel.isap.workflow.dao.IGroupDao;
import com.syntel.isap.workflow.service.IGroupService;

@Service("groupService")
public class GroupServiceImpl implements IGroupService {

	@Autowired
	private IGroupDao groupDao;
	
	@Transactional
	public void addgroup(GroupBean grpBean) {
		groupDao.addGroup(grpBean);
		
	}

	@Transactional
	public List<GroupBean> getGroupNames() {
		List<GroupBean> grpBeans=new ArrayList<GroupBean>();
		grpBeans=groupDao.getGroupNames();
		return grpBeans;
	}

	@Transactional
	public List<String> getWorkflowNames(int id) {
		List<String> wfNames=new ArrayList<String>();
		wfNames=groupDao.getWorkflowNames(id);
		return wfNames;
	}

	@Transactional
	public int getGroupCount() {
		
		return groupDao.getGroupCount();
	}

	@Transactional
	public void addGroupMapping(int idGroups, int workflowId) {
		GroupWorkflowMapping groupWorkflowMapping = new GroupWorkflowMapping();
		groupWorkflowMapping.setIdGroups(idGroups);
		groupWorkflowMapping.setWORKFLOWID(workflowId);
		groupDao.addGroupMapping(groupWorkflowMapping);
		
	}

	@Transactional
	public List<Integer> getwrkflwIdsFromGroupMap(int groupId) {
		return groupDao.getwrkflwIdsFromGroupMap(groupId);
	}

	@Transactional
	public String getWorkflowName(int workflowId) {

		return groupDao.getWorkflowName(workflowId);
	
	}

}
