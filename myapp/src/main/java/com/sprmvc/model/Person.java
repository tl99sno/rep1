package com.sprmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "person")
public class Person {

	@Id
	@GeneratedValue
	private Integer id;
	
	@NotEmpty(message="Name field may not be empty")
	@Pattern(regexp="[a-z,A-ZÅÄÖÜåäöü ]+", message="Name field should only contain numbers")
//	@Length(min=3, max=20, message="Name field should have a length of 3-20") overkill
	private String name;
	
	@NotEmpty(message="Surname field may not be empty")
	@Pattern(regexp="[a-z,A-ZÅÄÖÜåäöü ]+", message="Surname field should only contain numbers")
//	@Length(min=3, max=20, message="Surname field should have a length of 3-20 characters")
	private String surname;
	
	@Email(message="Not correct formatt for email")
	private String email;
	
	@Column(name="phone_number")
	@Pattern(regexp="[0-9,\\+ -]+", message="Phone number field should only contain numbers")
	private String phoneNumber;

	
	@ManyToOne
	@JoinColumn(name = "address_id")
	private Address address;

	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}
	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}

	
	@Override
	public String toString() {
		return "Person [id=" + id + ", name=" + name + ", surname=" + surname
				+ ", email=" + email + ", phoneNumber=" + phoneNumber
				+ ", address=" + address + "]";
	}

}
