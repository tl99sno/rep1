package com.sprmvc.controller.rest;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sprmvc.model.Person;
import com.sprmvc.service.PersonService;

@Controller
@RequestMapping(value="api/person")
public class PersonRestController {

	@Autowired
	private PersonService personService;
	
	@RequestMapping(value="/get", method=RequestMethod.GET)
	@ResponseBody
	public List<Person> getAllPersones() {
		List<Person> persons = personService.findAll();
		return persons;
	}
	
	@RequestMapping(value="/get/{id}", method=RequestMethod.GET)
	@ResponseBody
	public Person getPerson(@PathVariable Integer id) {
		Person person = personService.findById(id);
		return person;
	}

	@RequestMapping(value="/getbyname/{name}", method=RequestMethod.GET)
	@ResponseBody
	public List<Person> getPersonByName(@PathVariable String name) {
		List<Person> address = personService.findByName(name);
		return address;
	}
	
	@RequestMapping(value="/update/{id}", method=RequestMethod.PUT)
	@ResponseBody
	public void update(@ModelAttribute Person person, Model model) {
		personService.update(person);
	}
	
	@RequestMapping(value="/delete/{id}", method=RequestMethod.DELETE)
	@ResponseBody
	public void delete(@PathVariable Integer id) {
		personService.delete(id);
	}
}
