package com.droplets.rs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class DataCenterConfigMaster {

	@Id
	@GeneratedValue
	private long id;
	private long ramSize;
	private long cpuCore;
	private long hardDiskSize;
	private long transferSize;
	private double costPerHour;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public long getRamSize() {
		return ramSize;
	}

	public void setRamSize(long ramSize) {
		this.ramSize = ramSize;
	}

	public long getCpuCore() {
		return cpuCore;
	}

	public void setCpuCore(long cpuCore) {
		this.cpuCore = cpuCore;
	}

	public long getHardDiskSize() {
		return hardDiskSize;
	}

	public void setHardDiskSize(long hardDiskSize) {
		this.hardDiskSize = hardDiskSize;
	}

	public long getTransferSize() {
		return transferSize;
	}

	public void setTransferSize(long transferSize) {
		this.transferSize = transferSize;
	}

	public double getCostPerHour() {
		return costPerHour;
	}

	public void setCostPerHour(double costPerHour) {
		this.costPerHour = costPerHour;
	}

}
