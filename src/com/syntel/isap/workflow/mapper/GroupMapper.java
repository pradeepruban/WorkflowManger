package com.syntel.isap.workflow.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;


import org.apache.ibatis.annotations.Select;

import com.syntel.isap.workflow.bean.GroupBean;
import com.syntel.isap.workflow.bean.GroupWFBean;
import com.syntel.isap.workflow.bean.GroupWorkflowMapping;

public interface GroupMapper {

	final String GET_GROUPNAME="SELECT * FROM isap_wms_groups";
	final String GET_WORKFLOWNAME="SELECT w.WORKFLOWNAME FROM isap_wms_workflowmaster w,isap_wms_groups g WHERE w.idGroups=#{idGroups} AND w.idGroups=g.idGroups ";
	final String ADD_GROUP="INSERT INTO isap_wms_groups(groupName) VALUES(#{groupName})";
	final String GET_GROUPCOUNT="SELECT COUNT(*) FROM isap_wms_groups";
	final String GET_WFIDS_FROM_GROUPMAP = "SELECT WORKFLOWID FROM isap_wms_groupmap WHERE idGroups = #{groupId}";
	final String INSERT_GROUP_WORKFLOW_MAP = "insert into isap_wms_groupmap(idGroups,WORKFLOWID) values(#{idGroups},#{WORKFLOWID})";
	final String GET_WORKFLOWNAMEBYID = "SELECT WORKFLOWNAME FROM isap_wms_workflowmaster WHERE WORKFLOWID = #{workflowId} ";
	
	
	
	@Insert(ADD_GROUP)	
	@Options(useGeneratedKeys=true, keyProperty="idGroups", flushCache=true, keyColumn="idGroups")
	public void addGroup(GroupBean grpBean);
	
	@Select(GET_GROUPNAME)
	public List<GroupBean> getGroupNames();
	
	@Select(GET_WORKFLOWNAME)
	public List<String> getWorkflowNames(int id);

	@Select(GET_GROUPCOUNT)
	public int getGroupCount();
	
	@Select(GET_WFIDS_FROM_GROUPMAP)
	public List<Integer> getwrkflwIdsFromGroupMap(int groupId);

	@Insert(INSERT_GROUP_WORKFLOW_MAP)
	@Options(useGeneratedKeys = true, keyProperty = "GROUPMAPID", keyColumn = "GROUPMAPID")
	public void addGroupMapping(GroupWorkflowMapping groupWorkflowMapping);

	@Select(GET_WORKFLOWNAMEBYID)
	public String getWorkflowName(int workflowId);

	
}
