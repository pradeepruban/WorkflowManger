package com.syntel.isap.workflow.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.syntel.isap.workflow.bean.Host;
import com.syntel.isap.workflow.bean.HostWorkflowMapping;
import com.syntel.isap.workflow.bean.WorkflowAttributes;
import com.syntel.isap.workflow.bean.WorkflowMasterBean;
import com.syntel.isap.workflow.dao.IWorkflowDao;
import com.syntel.isap.workflow.service.IWorkflowService;
import com.syntel.isap.workflow.util.SaltEncryption;

@Service("workflowService")
public class WorkflowServiceImpl implements IWorkflowService {

	@Autowired
	private IWorkflowDao workflowDao;
	
	
	@Autowired
	private SaltEncryption saltEncryption;
	
	@Transactional
	public List<WorkflowMasterBean> getWorkflowDetais() {
		
		List<WorkflowMasterBean> list=new ArrayList<WorkflowMasterBean>();
		List<WorkflowMasterBean> Updatedlist=new ArrayList<WorkflowMasterBean>();
		List<WorkflowAttributes> attributeList=new ArrayList<WorkflowAttributes>();
		list= workflowDao.getWorkflowDetails();
		Iterator<WorkflowMasterBean> itr = list.iterator();
		while (itr.hasNext()) {
			WorkflowMasterBean bean = itr.next();
			attributeList=workflowDao.getAttributeList(bean.getWORKFLOWID());
			bean.setATTRIBUTELIST(attributeList);
			Updatedlist.add(bean);
		}
		return Updatedlist;
	}
	@Transactional
	public List<Host> getHostList() {
		return workflowDao.getHostList();
	}
	@Transactional
	public void addWorkflowMaster(WorkflowMasterBean workflow) {
		workflowDao.addWorkflowMaster(workflow);
	}
	@Transactional
	public void addHostMapping(int workflowid, int hostId) {
		
		HostWorkflowMapping hostWorkflowMapping=new HostWorkflowMapping();
		hostWorkflowMapping.setHOSTID(hostId);
		hostWorkflowMapping.setWORKFLOWID(workflowid);
		workflowDao.addHostMapping(hostWorkflowMapping);
	}
	
	@Transactional
	public void saveWorkflowAttribute(WorkflowAttributes attributes) {
		
		String EncrytedValue=null;
		if(attributes.getENCRYPTFLAG()==1)
		{
		try {
			EncrytedValue=saltEncryption.Encrpt(attributes.getATTRIBUTEDEFAULTVALUE());
			System.out.println(EncrytedValue);
			attributes.setATTRIBUTEDEFAULTVALUE(EncrytedValue);
			
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		workflowDao.saveWorkflowAttribute(attributes);
	}
	
	@Transactional
	public void deleteWorkflow(Integer workflowId) {
		
		workflowDao.deleteWorkflowAttributes(workflowId);
		workflowDao.deleteWorkflowHosts(workflowId);
		workflowDao.deleteWorkflow(workflowId);
		
	}
	
	@Transactional
	public WorkflowMasterBean editWorkflow(Integer workflowId) {
		
		WorkflowMasterBean masterBean=workflowDao.getWorkflow(workflowId);
		List<WorkflowAttributes> attributeList=workflowDao.getAttributeList(workflowId);
		masterBean.setATTRIBUTELIST(attributeList);
		List<Host> hostList=workflowDao.getHostList(workflowId);
		masterBean.setHOSTLIST(hostList);
		return masterBean;
	}
	
	@Transactional
	public void updateWorkflowMaster(WorkflowMasterBean workflow) {

		workflowDao.updateWorkflowMaster(workflow);
	}
	
	@Transactional
	public void deleteHostMapping(int workflowid) {
		
		workflowDao.deleteWorkflowHosts(workflowid);
	}
	
	@Transactional
	public int getWorkflowCount() {
		return workflowDao.getWorkflowCount();
	}
	@Transactional
	public List<WorkflowMasterBean> getAllWorkflowNames() {
		
		return workflowDao.getWorkflowDetails();
	}

}
