package com.sprmvc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.sprmvc.exception.PersonNotFoundException;
import com.sprmvc.model.Person;
import com.sprmvc.repository.PersonRepository;

@Service
@Transactional(rollbackFor=PersonNotFoundException.class)
public class PersonServiceImpl implements PersonService {

	@Autowired
	private PersonRepository personRepository;
	
	public void create(Person person) {
		personRepository.save(person);	
	}

	public void update(Person person) throws PersonNotFoundException {
		personRepository.save(person);
	}

	public void delete(Integer id) throws PersonNotFoundException {
		personRepository.delete(id);
	}

	public Person findById(Integer id) {
		Person person = personRepository.findOne(id);
		return person;
	}

	public List<Person> findAll() {
		List<Person> listOfPersons = personRepository.findAll();
		return  listOfPersons;
	}

	public List<Person> findByName(String name) {
		List<Person> listOfPersons = personRepository.findPersonByName(name);
		return listOfPersons;
	}
}
