package com.sprmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.NotEmpty;


@Entity
@Table(name = "address")
public class Address {

	@Id
	@GeneratedValue
	private Integer id;
	
	@NotEmpty(message="Country field may not be empty")
	@Pattern(regexp="[a-z,A-ZåäöüÅÄÖÜ ]+", message="Country field should only contain characters")
	private String country;
	
	@NotEmpty(message="Name field may not be empty")
	@Pattern(regexp="[a-z,A-ZåäöüÅÄÖÜ ]+", message="City field should only contain characters")
	private String city;
	
	@NotEmpty(message="Street field may not be empty")
	@Pattern(regexp="[a-z,A-ZåäöüÅÄÖÜ ]+", message="Street field should only contain characters")
	private String street;

	// Integer validation?
	private int postalcode;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public int getPostalcode() {
		return postalcode;
	}

	public void setPostalcode(int postalcode) {
		this.postalcode = postalcode;
	}

	@Override
	public String toString() {
		return "Address [id=" + id + ", country=" + country + ", city=" + city
				+ ", street=" + street + ", postalcode=" + postalcode + "]";
	}

}
