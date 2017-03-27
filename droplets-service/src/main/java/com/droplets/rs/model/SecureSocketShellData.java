package com.droplets.rs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class SecureSocketShellData {

	@Id
	@GeneratedValue
	private long id;
	private String sslPublicKeyName;
	private String sslPublicKeyValue;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getSslPublicKeyName() {
		return sslPublicKeyName;
	}

	public void setSslPublicKeyName(String sslKeyName) {
		this.sslPublicKeyName = sslKeyName;
	}

	public String getSslPublicKeyValue() {
		return sslPublicKeyValue;
	}

	public void setSslPublicKeyValue(String sslKeyValue) {
		this.sslPublicKeyValue = sslKeyValue;
	}
}
