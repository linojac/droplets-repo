package com.droplets.rs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class OptionalConfigMaster {

	@Id
	@GeneratedValue
	@Column(name="optional_id")
	private long optionalId;
	private String itemName;

	public long getOptionalId() {
		return optionalId;
	}

	public void setOptionalId(long id) {
		this.optionalId = id;
	}

	public String getItemName() {
		return itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

}
