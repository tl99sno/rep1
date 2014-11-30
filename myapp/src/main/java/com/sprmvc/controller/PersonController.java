package com.sprmvc.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.sprmvc.service.AddressService;
import com.sprmvc.service.PersonService;
import com.sprmvc.model.Address;
import com.sprmvc.model.Person;

@Controller
@RequestMapping(value = "person")
public class PersonController {

	
	@Autowired
	private PersonService personService;
	@Autowired
	private AddressService addressService;

	
    @RequestMapping(value="/menu", method=RequestMethod.GET)
    public String menu() {
        return "person/menu";
    }
    
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public String chooseAddress(Model model) {
		List<Address> listOfAddresses = addressService.findAll();
		model.addAttribute("addresses", listOfAddresses);
		model.addAttribute("adrs", new Address());
		return "person/create";
	}

	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String enterPersonDetails(@ModelAttribute Address chosenaddress, Model model) {
		Address address  = addressService.findById(chosenaddress.getId());
		Person person = new Person();
		person.setAddress(address);
		model.addAttribute("person", person);
		return "person/save";
	}

	@RequestMapping(value="/result", method = RequestMethod.POST)
	public ModelAndView save(@Valid Person person, BindingResult result) {
		ModelAndView model = new ModelAndView("person/result");
		if(result.hasErrors()) {
			model.setViewName("person/save");
			return model;
		}
		else {
			personService.create(person);
			model.addObject("person", person);
			return model;	
		}
	}
	
	@RequestMapping(value = "/display", method = RequestMethod.GET)
	public ModelAndView displayAll() {
		List<Person> list = personService.findAll();
		ModelAndView model = new ModelAndView("person/view");
		model.addObject("personlist", list);
		return model;
	}

	@RequestMapping(value = "/display/{id}", method = RequestMethod.GET)
	public Person getPersonById(@PathVariable int id) {
		Person person = personService.findById(id);
		return person;
	}

	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String edit(@PathVariable int id, Model model) {
		Person person = personService.findById(id);
		model.addAttribute("person", person);
		return "person/edit";
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable int id) {
		personService.delete(id);
		return "redirect:/person/display";
	}
	
	@RequestMapping(value="/update", method=RequestMethod.POST)
	public ModelAndView update(@Valid Person person, BindingResult result) {
    	ModelAndView view = new ModelAndView("person/view");
    	if (result.hasErrors()){
    		view.setViewName("person/edit");
    		return view;
    	}
    	else {
    		personService.update(person);
    		List<Person> listOfPersons = personService.findAll();
    		view.addObject("personlist", listOfPersons);
            return view;
    	}
	}
}
