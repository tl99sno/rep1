package com.sprmvc.utils;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

public class UrlConnector {


	private static UrlConnector instance = null;

	private UrlConnector() {
	}

	public static synchronized UrlConnector getInstance() {
		if (instance == null)
			instance = new UrlConnector();
		return instance;
	}

	public String getData(String urlToUse) {
		String dataFetched = "";
		try {
			URL oracle = new URL(urlToUse);
			URLConnection yc = oracle.openConnection();
			BufferedReader in = new BufferedReader(new InputStreamReader(
					yc.getInputStream()));
			String inputLine;
			while ((inputLine = in.readLine()) != null)
				dataFetched += inputLine;
			in.close();
		} catch (Exception e) {
			System.out.println(e);
		}
		return dataFetched;
	}
}