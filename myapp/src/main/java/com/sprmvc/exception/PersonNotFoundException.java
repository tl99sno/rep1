package com.sprmvc.exception;

public class PersonNotFoundException extends RuntimeException {
	
	private static final long serialVersionUID = -2899360775849084520L;

	public PersonNotFoundException(String id) {
		super("No person found with id: "+id);
	}

}
