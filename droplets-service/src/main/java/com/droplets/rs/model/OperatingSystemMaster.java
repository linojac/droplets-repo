package com.droplets.rs.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class OperatingSystemMaster {

	@Id
	@GeneratedValue
	private long id;

	private String osName;

	@OneToMany(fetch=FetchType.EAGER, cascade=CascadeType.ALL)
	private Set<OsVersion> osVersion;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getOsName() {
		return osName;
	}

	public void setOsName(String osName) {
		this.osName = osName;
	}

	public Set<OsVersion> getOsVersion() {
		return osVersion;
	}

	public void setOsVersion(Set<OsVersion> osVersion) {
		this.osVersion = osVersion;
	}



}
