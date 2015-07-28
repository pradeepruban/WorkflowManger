package com.syntel.isap.workflow.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.syntel.isap.workflow.bean.Host;
import com.syntel.isap.workflow.bean.HostWorkflowMapping;
import com.syntel.isap.workflow.bean.WorkflowAttributes;
import com.syntel.isap.workflow.bean.WorkflowMasterBean;

public interface WorkflowMapper {
	
	
	final String GET_WORKFLOWS="select * from isap_wms_workflowmaster ORDER BY WORKFLOWID desc";
	
	final String GET_WORKFLOWCOUNT="select count(*) from isap_wms_workflowmaster";
	
	final String GET_WORKFLOW="select * from isap_wms_workflowmaster where WORKFLOWID=#{workflowId}";
	
	final String GET_ATTRIBUTES="select * from isap_wms_workflowattributes where WORKFLOWID=#{workflowid}";
	
	final String GET_HOSTS="select * from host";
	
	
	final String GET_WFHOST="select h1.HOSTID,h1.IPADDRESS from hostworkflowmapping h,host h1  where h.WORKFLOWID=#{workflowId} AND h.HOSTID=h1.HOSTID";
	
	
	final String INSERT_WORKFLOWMASTER  = "insert into isap_wms_workflowmaster(WORKFLOWNAME,WORKFLOWDESC,STATUS,PRIORITY) values(#{WORKFLOWNAME},#{WORKFLOWDESC},#{STATUS},#{PRIORITY})";
	
	final String INSERT_WORKFLOWHOSTMAPPING="insert into hostWorkflowMapping(WORKFLOWID,HOSTID) values(#{WORKFLOWID},#{HOSTID}) ";
	
	final String INSERT_WORKFLOWATTRIBUTES="insert into isap_wms_workflowattributes(WORKFLOWID,ATTRIBUTNAME,ATTRIBUTEDEFAULTVALUE,DEFAULTFLAG,ENCRYPTFLAG) values(#{WORKFLOWID},#{ATTRIBUTNAME},#{ATTRIBUTEDEFAULTVALUE},#{DEFAULTFLAG},#{ENCRYPTFLAG}) ";
	
	final String DELETE_WFATTRIBUTES="delete from isap_wms_workflowattributes where WORKFLOWID=#{workflowId}";
	
	final String DELETE_WFHOSTS="delete from hostworkflowmapping where WORKFLOWID=#{workflowId}";
	
	
	final String DELETE_WORKFLOW="delete from isap_wms_workflowmaster where WORKFLOWID=#{workflowId}";
	
	
	
	final String UPDATE_WORKFLOW="update isap_wms_workflowmaster set WORKFLOWNAME=#{WORKFLOWNAME},WORKFLOWDESC=#{WORKFLOWDESC},STATUS=#{STATUS},PRIORITY=#{PRIORITY} where WORKFLOWID=#{WORKFLOWID} ";
	
	
	@Select(GET_WORKFLOWS)
	public List<WorkflowMasterBean> getWorkflowDetails();

	
	@Select(GET_HOSTS)
	public List<Host> getHostList();


	@Insert(INSERT_WORKFLOWMASTER)
	@Options(useGeneratedKeys = true, keyProperty = "WORKFLOWID", keyColumn = "WORKFLOWID")
	public void addWorkflowMaster(WorkflowMasterBean addWorkflowMaster);


	@Insert(INSERT_WORKFLOWHOSTMAPPING)
	@Options(useGeneratedKeys = true, keyProperty = "HOSTMAPPINGID", keyColumn = "HOSTMAPPINGID")
	public void addHostMappings(HostWorkflowMapping hostWorkflowMapping);

	@Insert(INSERT_WORKFLOWATTRIBUTES)
	@Options(useGeneratedKeys = true, keyProperty = "HOSTMAPPINGID", keyColumn = "HOSTMAPPINGID")
	public void saveWorkflowAttribute(WorkflowAttributes attributes);

	@Select(GET_ATTRIBUTES)
	public List<WorkflowAttributes> getAttributeList(int workflowid);

   
	@Delete(DELETE_WFATTRIBUTES)
	public void deleteWorkflowAttributes(Integer workflowId);
	
	@Delete(DELETE_WFHOSTS)
	public void deleteWorkflowHosts(Integer workflowId);
	
	@Delete(DELETE_WORKFLOW)
	public void deleteWorkflow(Integer workflowId);

	@Select(GET_WORKFLOW)
	public WorkflowMasterBean getWorkflow(Integer workflowId);

	@Select(GET_WFHOST)
	public List<Host> getHosts(Integer workflowId);

    @Update(UPDATE_WORKFLOW)
	public void editWorkflowMaster(WorkflowMasterBean workflow);

    @Select(GET_WORKFLOWCOUNT)
	public int getWorkflowCount();

}
