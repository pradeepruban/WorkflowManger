package com.syntel.isap.workflow.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.syntel.isap.workflow.bean.IsapWmsServicesMasterBean;

public interface ServicesMapper {
	
	
    final String GET_SERVICELIST = "select SERVICEID,SERVICENAME,SERVICEDESCRIPTION,DATETIMECREATED,DATETIMEUPDATED,DATETIMEDELETED, STATUS from isap_wms_servicesmaster";	
	
    final String GET_SERVICESCOUNT = "select count(*) from isap_wms_servicesmaster";	
    
	@Select(GET_SERVICELIST)

	List<IsapWmsServicesMasterBean> getServicesDetails();

	@Select(GET_SERVICESCOUNT)
	int getServiceCount();

}
