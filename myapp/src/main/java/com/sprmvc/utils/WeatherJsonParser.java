package com.sprmvc.utils;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.sprmvc.model.Weather;

public class WeatherJsonParser {

	private String json;
	
	public WeatherJsonParser(String json) {
		this.json = json;
	}

	public Weather populateWeatherModel() {
		
		Weather weather = new Weather();
		JSONParser jsonParser = new JSONParser();
		
		try {
			JSONObject jsonObject = (JSONObject) jsonParser.parse(json);

			weather.setCity((String) jsonObject.get("name"));
			// coord
			JSONObject coord = (JSONObject) jsonObject.get("coord");
			weather.setLongitude((Number) coord.get("lon"));
			weather.setLatitude((Number) coord.get("lat"));

			// sys
			JSONObject sys = (JSONObject) jsonObject.get("sys");
			weather.setCountry((String) sys.get("country"));
			
			// wind
			JSONObject wind = (JSONObject) jsonObject.get("wind");
			weather.setWindSpeed((Number) wind.get("speed"));
			weather.setWindDirection((Number)wind.get("deg"));

			// main
			JSONObject main = (JSONObject) jsonObject.get("main");
			weather.setPressure((Number) main.get("pressure"));
			weather.setHumidity((Number) main.get("humidity"));
			weather.setTemperature((Number) main.get("temp"));
			weather.setTemp_min( (Number)main.get("temp_min"));
			weather.setTemp_max( (Number) main.get("temp_max"));

			// weather
			JSONArray wetter = (JSONArray) jsonObject.get("weather");
			JSONObject details = (JSONObject) wetter.get(0);
			weather.setDescription((String) details.get("description"));
			weather.setIcon((String)details.get("icon"));
			
		} catch (ParseException e) {
			// this could be inserted into own exception class
			System.out.println("Parsexception thrown when parsing json: " + e);
			e.printStackTrace();
		}
		return weather;
	}
}

/*
{  
	   "coord":{  
	      "lon":17.65,
	      "lat":59.86
	   },
	   "sys":{  
	      "type":1,
	      "id":5419,
	      "message":0.0302,
	      "country":"SE",
	      "sunrise":1414995432,
	      "sunset":1415026125
	   },
	   "weather":[  
	      {  
	         "id":802,
	         "main":"Clouds",
	         "description":"scattered clouds",
	         "icon":"03d"
	      }
	   ],
	   "base":"cmc stations",
	   "main":{  
	      "temp":285.15,
	      "pressure":993,
	      "humidity":87,
	      "temp_min":285.15,
	      "temp_max":285.15
	   },
	   "wind":{  
	      "speed":7.7,
	      "deg":220
	   },
	   "clouds":{  
	      "all":40
	   },
	   "dt":1415024400,
	   "id":2666199,
	   "name":"Uppsala",
	   "cod":200
	}
*/