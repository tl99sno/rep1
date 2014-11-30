package com.sprmvc.model;

public class Weather {

	private Number longitude;
	private Number latitude;
	private Number temperature;
	private Number temp_max;
	private Number temp_min;
	private Number windSpeed;
	private Number windDirection;
	private Number pressure;
	private Number humidity;
	private String icon;
	private String description;
	private String country;
	private String city;
	

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
	
	public Number getLongitude() {
		return longitude;
	}
	public void setLongitude(Number longitude) {
		this.longitude = longitude;
	}

	public Number getLatitude() {
		return latitude;
	}
	public void setLatitude(Number latitude) {
		this.latitude = latitude;
	}

	public Number getTemperature() {
		return temperature;
	}

	public void setTemperature(Number temperature) {
		this.temperature = temperature;
	}

	public Number getTemp_max() {
		return temp_max;
	}
	public void setTemp_max(Number temp_max) {
		this.temp_max = temp_max;
	}

	public Number getTemp_min() {
		return temp_min;
	}

	public void setTemp_min(Number temp_min) {
		this.temp_min = temp_min;
	}

	public Number getWindSpeed() {
		return windSpeed;
	}

	public void setWindSpeed(Number windSpeed) {
		this.windSpeed = windSpeed;
	}

	public Number getWindDirection() {
		return windDirection;
	}
	public void setWindDirection(Number windDirection) {
		this.windDirection = windDirection;
	}

	public Number getPressure() {
		return pressure;
	}
	public void setPressure(Number pressure) {
		this.pressure = pressure;
	}

	public Number getHumidity() {
		return humidity;
	}
	public void setHumidity(Number humidity) {
		this.humidity = humidity;
	}

	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}

	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	@Override
	public String toString() {
		return "Weather [longitude=" + longitude + ", latitude=" + latitude
				+ ", temperature=" + temperature + ", temp_max=" + temp_max
				+ ", temp_min=" + temp_min + ", windSpeed=" + windSpeed
				+ ", windDirection=" + windDirection + ", pressure=" + pressure
				+ ", humidity=" + humidity + ", icon=" + icon
				+ ", description=" + description + "]";
	}	
	
}
