package com.sprmvc.exception;

public class AddressNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 91951545864168189L;

	public AddressNotFoundException(String id) {
		super("No address found with with id: "+id);
	}

}
