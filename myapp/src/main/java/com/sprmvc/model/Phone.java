package com.sprmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "phone")
public class Phone {

	@Id
	@GeneratedValue
	private Integer id;
	private String model;
	private String description;
	private String os;
	private String cpu;
	@Column(name="image_url")
	private String imageUrl;
	
	// link to pricerunner or prisjakt.nu
	//screen size/resolution/kamera capabilities
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getModel() {
		return model;
	}
	public void setModel(String model) {
		this.model = model;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getOs() {
		return os;
	}
	public void setOs(String os) {
		this.os = os;
	}
	public String getCpu() {
		return cpu;
	}
	public void setCpu(String cpu) {
		this.cpu = cpu;
	}
	public String getImageUrl() {
		return imageUrl;
	}
	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}
	
	
	@Override
	public String toString() {
		return "Phone [id=" + id + ", model=" + model + ", description="
				+ description + ", os=" + os + ", cpu=" + cpu + ", imageUrl="
				+ imageUrl + "]";
	}	
	
}
