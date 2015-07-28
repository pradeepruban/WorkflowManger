package com.syntel.isap.workflow.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.syntel.isap.workflow.bean.IsapWmsServicesMasterBean;
import com.syntel.isap.workflow.dao.IServicesDao;
import com.syntel.isap.workflow.mapper.ServicesMapper;

@Service("servicesDao")
public class ServicesDaoImpl implements IServicesDao {

	
	@Autowired
	private ServicesMapper servicesMapper;
	
	public List<IsapWmsServicesMasterBean> getServiceDetails() {
		return servicesMapper.getServicesDetails();
	}

	public int getServiceCount() {
		return servicesMapper.getServiceCount();
	}

}
