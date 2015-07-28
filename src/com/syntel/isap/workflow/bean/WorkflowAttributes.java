package com.syntel.isap.workflow.bean;

import java.io.Serializable;

public class WorkflowAttributes implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int WORKFLOWATTRIBUTESID;
	private int WORKFLOWID;
	private String ATTRIBUTNAME;
	private String ATTRIBUTETYPE;
	private String ATTRIBUTESIZE;
	private String ATTRIBUTEDEFAULTVALUE;
	private int DEFAULTFLAG;
	private int ENCRYPTFLAG;
	
	
	public int getWORKFLOWATTRIBUTESID() {
		return WORKFLOWATTRIBUTESID;
	}
	public void setWORKFLOWATTRIBUTESID(int wORKFLOWATTRIBUTESID) {
		WORKFLOWATTRIBUTESID = wORKFLOWATTRIBUTESID;
	}
	public int getWORKFLOWID() {
		return WORKFLOWID;
	}
	public void setWORKFLOWID(int wORKFLOWID) {
		WORKFLOWID = wORKFLOWID;
	}
	public String getATTRIBUTNAME() {
		return ATTRIBUTNAME;
	}
	public void setATTRIBUTNAME(String aTTRIBUTNAME) {
		ATTRIBUTNAME = aTTRIBUTNAME;
	}
	public String getATTRIBUTETYPE() {
		return ATTRIBUTETYPE;
	}
	public void setATTRIBUTETYPE(String aTTRIBUTETYPE) {
		ATTRIBUTETYPE = aTTRIBUTETYPE;
	}
	public String getATTRIBUTESIZE() {
		return ATTRIBUTESIZE;
	}
	public void setATTRIBUTESIZE(String aTTRIBUTESIZE) {
		ATTRIBUTESIZE = aTTRIBUTESIZE;
	}
	public String getATTRIBUTEDEFAULTVALUE() {
		return ATTRIBUTEDEFAULTVALUE;
	}
	public void setATTRIBUTEDEFAULTVALUE(String aTTRIBUTEDEFAULTVALUE) {
		ATTRIBUTEDEFAULTVALUE = aTTRIBUTEDEFAULTVALUE;
	}
	public int getDEFAULTFLAG() {
		return DEFAULTFLAG;
	}
	public void setDEFAULTFLAG(int dEFAULTFLAG) {
		DEFAULTFLAG = dEFAULTFLAG;
	}
	public int getENCRYPTFLAG() {
		return ENCRYPTFLAG;
	}
	public void setENCRYPTFLAG(int eNCRYPTFLAG) {
		ENCRYPTFLAG = eNCRYPTFLAG;
	}
}
