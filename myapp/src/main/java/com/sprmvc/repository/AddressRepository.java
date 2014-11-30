package com.sprmvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.sprmvc.model.Address;

public interface AddressRepository extends JpaRepository <Address, Integer> {
	
	@Query("SELECT a FROM Address a WHERE a.city = :city)")
	public List<Address> findAddressByName(@Param("city") String name);

	@Query("SELECT a FROM Address a WHERE a.country = :aa)")
	public List<Address> findByCountryName(@Param("aa") String aa);

	@Query("SELECT a FROM Address a WHERE a.postalcode = :postalcode)")
	public List<Address> findByPostalCode(@Param("postalcode") Integer postalcode);
}
