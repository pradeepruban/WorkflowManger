package com.syntel.isap.workflow.dao;

import java.util.List;

import com.syntel.isap.workflow.bean.IsapWmsServicesMasterBean;

public interface IServicesDao {

	List<IsapWmsServicesMasterBean> getServiceDetails();

	int getServiceCount();

}
