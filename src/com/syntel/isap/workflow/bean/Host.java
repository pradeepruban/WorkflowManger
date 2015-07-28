package com.syntel.isap.workflow.bean;

import java.io.Serializable;

public class Host implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int HOSTID;
	private String HOSTNAME;
	private String OSTYPE;
	private String PROVIDER;
	private String IPADDRESS;
	private String INFRATYPE;
	
	public int getHOSTID() {
		return HOSTID;
	}
	public void setHOSTID(int hOSTID) {
		HOSTID = hOSTID;
	}
	public String getHOSTNAME() {
		return HOSTNAME;
	}
	public void setHOSTNAME(String hOSTNAME) {
		HOSTNAME = hOSTNAME;
	}
	public String getOSTYPE() {
		return OSTYPE;
	}
	public void setOSTYPE(String oSTYPE) {
		OSTYPE = oSTYPE;
	}
	public String getPROVIDER() {
		return PROVIDER;
	}
	public void setPROVIDER(String pROVIDER) {
		PROVIDER = pROVIDER;
	}
	public String getIPADDRESS() {
		return IPADDRESS;
	}
	public void setIPADDRESS(String iPADDRESS) {
		IPADDRESS = iPADDRESS;
	}
	public String getINFRATYPE() {
		return INFRATYPE;
	}
	public void setINFRATYPE(String iNFRATYPE) {
		INFRATYPE = iNFRATYPE;
	}

	

}
