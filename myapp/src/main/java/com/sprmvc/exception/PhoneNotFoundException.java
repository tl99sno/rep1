package com.sprmvc.exception;

public class PhoneNotFoundException extends RuntimeException {
	
	private static final long serialVersionUID = -2899360775849084520L;

	public PhoneNotFoundException(String id) {
		super("No person found with id: "+id);
	}

}
