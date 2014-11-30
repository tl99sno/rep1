package com.sprmvc.controller.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sprmvc.model.Address;
import com.sprmvc.service.AddressService;

@Controller
@RequestMapping(value="api/address")
public class AddressRestController {

	@Autowired
	private AddressService addressService;
	
	@RequestMapping(value="/get", method=RequestMethod.GET)
	@ResponseBody
	public List<Address> getAllAddresses() {
		List<Address> addresses = addressService.findAll();
		return addresses;
	}
	
	@RequestMapping(value="/get/{id}", method=RequestMethod.GET)
	@ResponseBody
	public Address getAllAddresses(@PathVariable Integer id) {
		Address address = addressService.findById(id);
		return address;
	}

	@RequestMapping(value="/getbyname/{name}", method=RequestMethod.GET)
	@ResponseBody
	public List<Address> getAddressByName(@PathVariable String name) {
		List<Address> list = addressService.findByName(name);
		return list;
	}
	
	@RequestMapping(value="/update/{id}", method=RequestMethod.PUT)
	@ResponseBody
	public void update(@ModelAttribute Address address, Model model) {
		addressService.update(address);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseBody
	public void delete(@PathVariable Integer id) {
		addressService.delete(id);
	}
	
	@RequestMapping(value = "/search/{name}", method = RequestMethod.GET)
	@ResponseBody
	public List<Address> search(@PathVariable String name) {
		List<Address> list = addressService.findByName(name);
		return list;
	}
	
	@RequestMapping(value = "/searchbycountry", method = RequestMethod.GET)
	@ResponseBody
	public List<Address> searchByCountry(@RequestParam("country") String country) {
		List<Address> list = addressService.findByCountryName(country);
		return list;
	}

	@RequestMapping(value = "/searchByPostalCode", method = RequestMethod.GET)
	@ResponseBody
	public List<Address> searchByPostalCode(@RequestParam("postcode") Integer code) {
		List<Address> list = addressService.findByPostalCode(code);
		return list;
	}	
	//@PathVariable("id") UUID contactId, @RequestParam(value = "after", required = false, defaultValue="1970-01-01T00:00:00.000Z") String date
}
