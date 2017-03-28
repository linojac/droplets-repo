package com.droplets.rs.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class DataCenterConfigMaster {

	@Id
	@GeneratedValue
	private long id;
	private String ramSize;
	private String cpuCore;
	private String hardDiskSize;
	private String transferSize;
	private double costPerHour;
	private double costPerMonth;
	private double costPerYear;
	
	public double getCostPerMonth() {
		return costPerMonth;
	}
	public void setCostPerMonth(double costPerMonth) {
		this.costPerMonth = costPerMonth;
	}
	public double getCostPerYear() {
		return costPerYear;
	}
	public void setCostPerYear(double costPerYear) {
		this.costPerYear = costPerYear;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getRamSize() {
		return ramSize;
	}
	public void setRamSize(String ramSize) {
		this.ramSize = ramSize;
	}
	public String getCpuCore() {
		return cpuCore;
	}
	public void setCpuCore(String cpuCore) {
		this.cpuCore = cpuCore;
	}
	public String getHardDiskSize() {
		return hardDiskSize;
	}
	public void setHardDiskSize(String hardDiskSize) {
		this.hardDiskSize = hardDiskSize;
	}
	public String getTransferSize() {
		return transferSize;
	}
	public void setTransferSize(String transferSize) {
		this.transferSize = transferSize;
	}
	public double getCostPerHour() {
		return costPerHour;
	}
	public void setCostPerHour(double costPerHour) {
		this.costPerHour = costPerHour;
	}

	
	
}
