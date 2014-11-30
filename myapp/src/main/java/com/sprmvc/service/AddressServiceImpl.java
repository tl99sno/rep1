package com.sprmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.sprmvc.exception.AddressNotFoundException;
import com.sprmvc.exception.PhoneNotFoundException;
import com.sprmvc.model.Address;
import com.sprmvc.repository.AddressRepository;

@Service
@Transactional(rollbackFor=PhoneNotFoundException.class)
public class AddressServiceImpl implements AddressService {

	@Autowired
	private AddressRepository addressRepository;
	
	public void create(Address address) {
		addressRepository.save(address);		
	}

	public void update(Address address) throws AddressNotFoundException {
		addressRepository.save(address);

	}

	public void delete(Integer id) throws AddressNotFoundException {
		addressRepository.delete(id);
	}

	public Address findById(Integer id) {
		Address address = addressRepository.findOne(id);
		return address;
	}

	public List<Address> findAll() {
		List<Address> listOfAddresses = addressRepository.findAll();
		return listOfAddresses;
	}

	public List<Address> findByName(String name) {
		List<Address> listOfAddresses = addressRepository.findAddressByName(name);
		return listOfAddresses;
	}

	public List<Address> findByCountryName(String country) {
		List<Address> listOfAddresses = addressRepository.findByCountryName(country);
		return listOfAddresses;
	}

	public List<Address> findByPostalCode(Integer code) {
		List<Address> list = addressRepository.findByPostalCode(code);
		return list;
	}
}
