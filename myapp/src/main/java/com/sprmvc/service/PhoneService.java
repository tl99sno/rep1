package com.sprmvc.service;

import java.util.List;
import com.sprmvc.exception.PhoneNotFoundException;
import com.sprmvc.model.Phone;

public interface PhoneService {
	
	public void create(Phone phone);

	public void update(Phone phone) throws PhoneNotFoundException;

	public void delete(Integer id) throws PhoneNotFoundException;

	public Phone findById(Integer id);

	public List<Phone> findByName(String name);

	public List<Phone> findAll();
}
