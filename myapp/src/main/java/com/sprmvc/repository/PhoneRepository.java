package com.sprmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import com.sprmvc.model.Phone;

public interface PhoneRepository extends JpaRepository <Phone, Integer> {

}
