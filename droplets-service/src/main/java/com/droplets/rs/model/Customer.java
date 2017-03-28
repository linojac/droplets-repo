package com.droplets.rs.model;

import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Customer {
	
	@Id
	@GeneratedValue
	private long id;
	private String firstName;
	private String lastName;
	private String userName;
	private char[] password;
	@Column(columnDefinition="boolean default true")
	private boolean active;
	@OneToMany(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	private Set<Droplet> droplets;
	@OneToMany(fetch=FetchType.LAZY, cascade=CascadeType.ALL)
	private Set<SecureSocketShellData> secureSocketShellDatas;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public char[] getPassword() {
		return password;
	}
	public void setPassword(char[] password) {
		this.password = password;
	}
	public boolean isActive() {
		return active;
	}
	public void setActive(boolean active) {
		this.active = active;
	}
	public Set<SecureSocketShellData> getSecureSocketShellDatas() {
		return secureSocketShellDatas;
	}
	public void setSecureSocketShellDatas(Set<SecureSocketShellData> secureSocketShellDatas) {
		this.secureSocketShellDatas = secureSocketShellDatas;
	}
	
	
}
