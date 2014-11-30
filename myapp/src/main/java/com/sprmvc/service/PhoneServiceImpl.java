package com.sprmvc.service;

import java.util.List;
import com.sprmvc.model.Phone;
import com.sprmvc.repository.PhoneRepository;
import org.springframework.stereotype.Service;
import com.sprmvc.exception.PhoneNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional(rollbackFor=PhoneNotFoundException.class)
public class PhoneServiceImpl implements PhoneService {
	
	@Autowired
	private PhoneRepository phoneRepository;

	public void create(Phone phone) {
		phoneRepository.saveAndFlush(phone);
	}

	public void update(Phone phone) throws PhoneNotFoundException {
		Phone phoneToUpdate = phoneRepository.findOne(phone.getId());
		phoneToUpdate.setCpu(phone.getCpu());
		phoneToUpdate.setDescription(phone.getDescription());
		phoneToUpdate.setImageUrl(phone.getImageUrl());
		phoneToUpdate.setOs(phone.getOs());
		phoneRepository.saveAndFlush(phone);
	}

	public void delete(Integer id) throws PhoneNotFoundException {
		phoneRepository.delete(id);
	}

	public Phone findById(Integer id) {
		Phone phone = phoneRepository.findOne(id);
		return phone;
	}

	public List<Phone> findByName(String name) {
		// TODO
		return null;
	}

	public List<Phone> findAll() {
		List<Phone> listOfPhones = phoneRepository.findAll();
		return listOfPhones;
	}
	
}
