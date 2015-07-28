package com.syntel.isap.workflow.bean;
import java.io.Serializable;

public class IsapWmsServicesMasterBean implements Serializable {
	
	
	/**
	 * isap_wms_servicesmaster table bean
	 */
	
	private static final long serialVersionUID = 1L;
	
	private int SERVICEID;
	private String SERVICENAME;
	private String SERVICEDESCRIPTION;
	private String DATETIMECREATED;
	private String DATETIMEUPDATED;
	private String DATETIMEDELETED;
	private String STATUS;
	
	
	public int getSERVICEID() {
		return SERVICEID;
	}
	public void setSERVICEID(int sERVICEID) {
		SERVICEID = sERVICEID;
	}
	public String getSERVICENAME() {
		return SERVICENAME;
	}
	public void setSERVICENAME(String sERVICENAME) {
		SERVICENAME = sERVICENAME;
	}
	public String getSERVICEDESCRIPTION() {
		return SERVICEDESCRIPTION;
	}
	public void setSERVICEDESCRIPTION(String sERVICEDESCRIPTION) {
		SERVICEDESCRIPTION = sERVICEDESCRIPTION;
	}
	public String getDATETIMECREATED() {
		return DATETIMECREATED;
	}
	public void setDATETIMECREATED(String dATETIMECREATED) {
		DATETIMECREATED = dATETIMECREATED;
	}
	public String getDATETIMEUPDATED() {
		return DATETIMEUPDATED;
	}
	public void setDATETIMEUPDATED(String dATETIMEUPDATED) {
		DATETIMEUPDATED = dATETIMEUPDATED;
	}
	public String getDATETIMEDELETED() {
		return DATETIMEDELETED;
	}
	public void setDATETIMEDELETED(String dATETIMEDELETED) {
		DATETIMEDELETED = dATETIMEDELETED;
	}
	public String getSTATUS() {
		return STATUS;
	}
	public void setSTATUS(String sTATUS) {
		STATUS = sTATUS;
	}
}




