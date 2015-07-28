package com.syntel.isap.workflow.bean;

import java.io.Serializable;
import java.util.List;

public class WorkflowMasterBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private int WORKFLOWID;
	private String WORKFLOWNAME;
	private String WORKFLOWDESC;
	private String TRIGGERSOURCE;
	private String DATETIMECREATED;
  
	private String DATETIMEUPDATED;
	private String DATETIMEDELETED;
	private String STATUS; 
	private String PRIORITY;
	
	private List<WorkflowAttributes> ATTRIBUTELIST;
	private List<Host> HOSTLIST;
	
	public List<Host> getHOSTLIST() {
		return HOSTLIST;
	}
	public void setHOSTLIST(List<Host> hOSTLIST) {
		HOSTLIST = hOSTLIST;
	}
	public List<WorkflowAttributes> getATTRIBUTELIST() {
		return ATTRIBUTELIST;
	}
	public void setATTRIBUTELIST(List<WorkflowAttributes> aTTRIBUTELIST) {
		ATTRIBUTELIST = aTTRIBUTELIST;
	}
	public int getWORKFLOWID() {
		return WORKFLOWID;
	}
	public void setWORKFLOWID(int wORKFLOWID) {
		WORKFLOWID = wORKFLOWID;
	}
	public String getWORKFLOWNAME() {
		return WORKFLOWNAME;
	}
	public void setWORKFLOWNAME(String wORKFLOWNAME) {
		WORKFLOWNAME = wORKFLOWNAME;
	}
	public String getWORKFLOWDESC() {
		return WORKFLOWDESC;
	}
	public void setWORKFLOWDESC(String wORKFLOWDESC) {
		WORKFLOWDESC = wORKFLOWDESC;
	}
	public String getTRIGGERSOURCE() {
		return TRIGGERSOURCE;
	}
	public void setTRIGGERSOURCE(String tRIGGERSOURCE) {
		TRIGGERSOURCE = tRIGGERSOURCE;
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
	public String getPRIORITY() {
		return PRIORITY;
	}
	public void setPRIORITY(String pRIORITY) {
		PRIORITY = pRIORITY;
	}

}
