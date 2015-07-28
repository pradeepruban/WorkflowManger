package com.syntel.isap.workflow.bean;

import java.io.Serializable;

public class HostWorkflowMapping implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int HOSTMAPPINGID;
	private int HOSTID;
	private int WORKFLOWID;
	
	public int getHOSTMAPPINGID() {
		return HOSTMAPPINGID;
	}
	public void setHOSTMAPPINGID(int hOSTMAPPINGID) {
		HOSTMAPPINGID = hOSTMAPPINGID;
	}
	public int getHOSTID() {
		return HOSTID;
	}
	public void setHOSTID(int hOSTID) {
		HOSTID = hOSTID;
	}
	public int getWORKFLOWID() {
		return WORKFLOWID;
	}
	public void setWORKFLOWID(int wORKFLOWID) {
		WORKFLOWID = wORKFLOWID;
	}

}
