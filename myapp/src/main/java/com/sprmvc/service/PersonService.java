package com.sprmvc.service;

import java.util.List;
import com.sprmvc.exception.PersonNotFoundException;
import com.sprmvc.model.Person;

public interface PersonService {
	public void create(Person person);
	public void update(Person person) throws PersonNotFoundException;
	public void delete(Integer id) throws PersonNotFoundException;
	public Person findById(Integer id);
	public List<Person> findByName(String name);
	public List<Person> findAll();
}
