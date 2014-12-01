package com.sprmvc.controller;

import java.util.List;
import javax.validation.Valid;
import com.sprmvc.model.Address;
import com.sprmvc.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
@RequestMapping(value="address")
public class AddressController {

	@Autowired
	private AddressService addressService;

    @RequestMapping(value="/menu", method=RequestMethod.GET)
    public String menu() {
        return "address/menu";
    }
	
    @RequestMapping(value="/add", method=RequestMethod.GET)
    public String create(Model model) {
        model.addAttribute("address", new Address());
        return "address/add";
    }

    @RequestMapping(value="/result", method=RequestMethod.POST)
    public ModelAndView save(@Valid Address address, BindingResult result) {	
    	ModelAndView view = new ModelAndView("address/result");
    	if (result.hasErrors()){
    		view.setViewName("address/add");
    		return view;
    	}
    	else {
        	addressService.create(address);
            return view;
    	}
    }
	
	@RequestMapping(value="/display", method=RequestMethod.GET)
	public ModelAndView displayAll() {
		List<Address> addresses = addressService.findAll();
		ModelAndView model = new ModelAndView("address/view");
		model.addObject("addressList", addresses);
		return model;
	}
	
	@RequestMapping(value="/display/{id}", method=RequestMethod.GET)
	public Address getAddressById(@PathVariable int id) {
		Address address = addressService.findById(id);
		return address;
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.GET)
	public String delete(@PathVariable int id) {
		addressService.delete(id);
		return "redirect:/address/display";
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String edit(@PathVariable int id, Model model) {
		Address address = addressService.findById(id);
		model.addAttribute("address", address);
		return "address/edit";
	}

	@RequestMapping(value="/update", method=RequestMethod.POST)
	public ModelAndView update(@Valid Address address, BindingResult result) {
    	ModelAndView view = new ModelAndView("address/view");
    	if (result.hasErrors()){
    		view.setViewName("address/edit");
    		return view;
    	}
    	else {
    		addressService.update(address);
    		List<Address> addresses = addressService.findAll();
    		view.addObject("addressList", addresses);
            return view;
    	}
	}
}
