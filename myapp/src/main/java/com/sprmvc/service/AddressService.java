package com.sprmvc.service;

import java.util.List;

import com.sprmvc.exception.AddressNotFoundException;
import com.sprmvc.model.Address;

public interface AddressService {
	public void create(Address address);
	public void update(Address address) throws AddressNotFoundException;
	public void delete(Integer id) throws AddressNotFoundException;
	public Address findById(Integer id);
	public List<Address> findByName(String name);
	public List<Address> findAll();
	public List<Address> findByCountryName(String country);
	public List<Address> findByPostalCode(Integer code);
}
