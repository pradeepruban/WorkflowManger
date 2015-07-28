package com.syntel.isap.workflow.service;

import java.util.List;

import com.syntel.isap.workflow.bean.IsapWmsServicesMasterBean;

public interface IServicesService {

	List<IsapWmsServicesMasterBean> getServiceDetails();

	int getServiceCount();


}
