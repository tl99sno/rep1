package com.sprmvc.dto;

import javax.validation.constraints.Pattern;
import org.hibernate.validator.constraints.Length;


public class Address {
	
	// These messages could be fetched from property file or in the jsp
	@Pattern(regexp="[a-z,A-ZåäöÅÄÖ ]+", 	message="City field should only contain characters")
	@Length(min=3,					message="City must have 3 characters or more")
	private String city;
	
	@Pattern(regexp="[a-z,A-ZåäöÅÄÖ ]+", 	message="Country field should only contain characters")
	@Length(min=3,					message="Country must have 3 characters or more")
	private String country;
	
	private String latitude;
	private String longitude;
	
	
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	
	@Override
	public String toString() {
		return "Address [city=" + city + ", country=" + country + ", latitude="
				+ latitude + ", longitude=" + longitude + "]";
	}
	
}
