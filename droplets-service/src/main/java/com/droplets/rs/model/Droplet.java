package com.droplets.rs.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Droplet {

	@Id
	@GeneratedValue
	@Column(name="droplet_id")
	private long dropletId;
	private String dropletName;
	@ManyToOne(fetch = FetchType.LAZY)
	private DataCenterMaster dataCenterLocation;
	@ManyToOne(fetch = FetchType.LAZY)
	private DataCenterConfigMaster dataCenterConfig;
	@ManyToOne(fetch = FetchType.LAZY)
	private SecureSocketShellData secureSocketShellData;
	@ManyToOne(fetch = FetchType.LAZY)
	private OperatingSystemMaster operatingSystem;
	@ManyToOne(fetch=FetchType.LAZY , cascade = CascadeType.ALL)
	private Customer customer;
	@ManyToMany(fetch = FetchType.LAZY, cascade = CascadeType.ALL)
	private Set<OptionalConfigMaster> optionalConfig;
	@OneToMany(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	private Set<UsageDetail> usageDetails; 
	private boolean active;
	public long getDropletId() {
		return dropletId;
	}
	public void setDropletId(long dropletId) {
		this.dropletId = dropletId;
	}
	public String getDropletName() {
		return dropletName;
	}
	public void setDropletName(String dropletName) {
		this.dropletName = dropletName;
	}
	public DataCenterMaster getDataCenterLocation() {
		return dataCenterLocation;
	}
	public void setDataCenterLocation(DataCenterMaster dataCenterLocation) {
		this.dataCenterLocation = dataCenterLocation;
	}
	public DataCenterConfigMaster getDataCenterConfig() {
		return dataCenterConfig;
	}
	public void setDataCenterConfig(DataCenterConfigMaster dataCenterConfig) {
		this.dataCenterConfig = dataCenterConfig;
	}
	public SecureSocketShellData getSecureSocketShellData() {
		return secureSocketShellData;
	}
	public void setSecureSocketShellData(SecureSocketShellData secureSocketShellData) {
		this.secureSocketShellData = secureSocketShellData;
	}
	public OperatingSystemMaster getOperatingSystem() {
		return operatingSystem;
	}
	public void setOperatingSystem(OperatingSystemMaster operatingSystem) {
		this.operatingSystem = operatingSystem;
	}
	public Set<OptionalConfigMaster> getOptionalConfig() {
		return optionalConfig;
	}
	public void setOptionalConfig(Set<OptionalConfigMaster> optionalConfig) {
		this.optionalConfig = optionalConfig;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

}
