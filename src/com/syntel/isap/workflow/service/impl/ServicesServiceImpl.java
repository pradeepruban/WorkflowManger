package com.syntel.isap.workflow.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.syntel.isap.workflow.bean.IsapWmsServicesMasterBean;
import com.syntel.isap.workflow.dao.IServicesDao;

import com.syntel.isap.workflow.service.IServicesService;


@Service("servicesService")
public class ServicesServiceImpl implements IServicesService {
	
	@Autowired
	private IServicesDao servicesDao;
	
	@Transactional
	public List<IsapWmsServicesMasterBean> getServiceDetails() {
		return servicesDao.getServiceDetails();
	}

	@Transactional
	public int getServiceCount() {
		return servicesDao.getServiceCount();
	}

}
