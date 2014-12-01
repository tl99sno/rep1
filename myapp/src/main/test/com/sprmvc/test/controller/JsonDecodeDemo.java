package com.sprmvc.test.controller;

import org.json.simple.JSONObject;
import org.json.simple.JSONArray;
import org.json.simple.parser.ParseException;
import org.json.simple.parser.JSONParser;

class JsonDecodeDemo {

	private static final double ABSOLUTE_ZERO = 237.15f;

	public static void main(String[] args) throws ParseException {
		String s = "{\"coord\":{\"lon\":17.65,\"lat\":59.86},\"sys\":{\"type\":1,\"id\":5419,\"message\":0.1007,\"country\":\"SE\",\"sunrise\":1415081985,\"sunset\":1415112374},\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"base\":\"cmc stations\",\"main\":{\"temp\":284.67,\"pressure\":990,\"humidity\":93,\"temp_min\":284.15,\"temp_max\":285.15},\"wind\":{\"speed\":7.7,\"deg\":180},\"clouds\":{\"all\":90},\"dt\":1415100000,\"id\":2666199,\"name\":\"Uppsala\",\"cod\":200}";

		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObject = (JSONObject) jsonParser.parse(s);

		// coord
		JSONObject coord = (JSONObject) jsonObject.get("coord");
		System.out.println(coord.get("lon"));
		System.out.println(coord.get("lat"));

		// wind
		JSONObject wind = (JSONObject) jsonObject.get("wind");
		System.out.println(wind.get("speed"));
		System.out.println(wind.get("deg"));

		// main
		JSONObject main = (JSONObject) jsonObject.get("main");
		System.out.println(main.get("pressure"));
		System.out.println(main.get("humidity"));
		System.out.println(main.get("temp"));
		System.out.println(main.get("temp_min"));
		System.out.println(main.get("temp_max"));

		// name
		String name = (String) jsonObject.get("name");
		System.out.println("City name is: " + name);

		// weather
		JSONArray weather = (JSONArray) jsonObject.get("weather");
		JSONObject details = (JSONObject) weather.get(0);
		System.out.println(details.get("description"));
		System.out.println(details.get("icon"));

	}
}