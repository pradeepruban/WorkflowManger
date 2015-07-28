package com.syntel.isap.workflow.bean;

import java.io.Serializable;

public class GroupBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int idGroups;
	private String groupName;
	private String groupDescription;

	public String getGroupDescription() {
		return groupDescription;
	}

	public void setGroupDescription(String groupDescription) {
		this.groupDescription = groupDescription;
	}

	public int getIdGroups() {
		return idGroups;
	}

	public void setIdGroups(int idGroups) {
		this.idGroups = idGroups;
	}

	

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
}
