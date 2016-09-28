package com.niit.shopingcart.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table(name = "shipping")
@Component
public class shipping {
	
	@Id
	@Column(name="name")
	private String name;

	

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getMailID() {
		return mail;
	}

	public void setMailID(String mail) {
		this.mail = mail;
	}

	public String getAddress1() {
		return ad1;
	}

	public void setAddress1(String address, String ad1) {
		this.ad1 = ad1;
	}

	public String getContactNumber() {
		return contact;
	}

	public void setContactNumber(String contact) {
		this.contact = contact;
	}

	@Column(name = "mail")
	private String mail;
	
	private String ad1;
	private String ad2;
	private int zip;
	private String city;
	private String state;
	private String contact;
	
	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}

	public String getAd1() {
		return ad1;
	}

	public void setAd1(String ad1) {
		this.ad1 = ad1;
	}

	public String getAd2() {
		return ad2;
	}

	public void setAd2(String ad2) {
		this.ad2 = ad2;
	}

	public int getZip() {
		return zip;
	}

	public void setZip(int zip) {
		this.zip = zip;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	@Column(name = "contact_number")
	private String contactNumber;
}
