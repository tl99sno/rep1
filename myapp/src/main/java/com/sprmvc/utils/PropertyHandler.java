package com.sprmvc.utils;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.Properties;

public class PropertyHandler {

	private static PropertyHandler instance = null;

	private Properties props = null;
	private String filePath = "D://programming//workspace11//myapp//src//main//resources//text.properties";

	private PropertyHandler() {
		props = new Properties();
		try {
			FileInputStream in = new FileInputStream(filePath);
			props.load(in);
			in.close();
		} catch (IOException e) {
			e.getMessage();
		}
	}

	public static synchronized PropertyHandler getInstance() {
		if (instance == null)
			instance = new PropertyHandler();
		return instance;
	}

	public String getValue(String propKey) {
		return this.props.getProperty(propKey);
	}
}