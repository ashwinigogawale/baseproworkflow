package com.realnet.ncso.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "ncso_attchments")
public class Attachments {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long attact_id;
	private String filename;
	private boolean external = false;
	private boolean cancel = false;
	
	public Attachments() {}

	public Long getAttact_id() {
		return attact_id;
	}

	public void setAttact_id(Long attact_id) {
		this.attact_id = attact_id;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public boolean isExternal() {
		return external;
	}

	public void setExternal(boolean external) {
		this.external = external;
	}

	public boolean isCancel() {
		return cancel;
	}

	public void setCancel(boolean cancel) {
		this.cancel = cancel;
	}
	
	

}
