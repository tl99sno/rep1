package com.sprmvc.controller;

import javax.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.sprmvc.dto.Address;
import com.sprmvc.model.Weather;
import com.sprmvc.utils.PropertyHandler;
import com.sprmvc.utils.UrlConnector;
import com.sprmvc.utils.WeatherJsonParser;

@Controller
@RequestMapping(value = "weather")
public class WeatherController {

	
	private UrlConnector connector = UrlConnector.getInstance(); 
	private PropertyHandler prop  = PropertyHandler.getInstance();
	
	
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public String currentWeather(Model model) {
		model.addAttribute("address", new Address());
		return "weather/select";
	}

	
	@RequestMapping(value = "/result", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView getweather(@Valid Address address, BindingResult result) {
		
		ModelAndView view = new ModelAndView("weather/result");
		if(result.hasErrors()) {
			view.setViewName("weather/select");
			view.addObject("address", address);
			return view;
		}
		String endpoint = prop.getValue("weatherendpoint");
		String url = endpoint.replace("{}", address.getCity() + "," + address.getCountry());
		String data = connector.getData(url);
		WeatherJsonParser parser = new WeatherJsonParser(data);
		Weather currentWeather = parser.populateWeatherModel();
		view.addObject("weather", currentWeather);
		return view;
	}

	@RequestMapping(value="/result1", method = RequestMethod.POST)
	public ModelAndView getWeatherForCurrentLocation(@ModelAttribute Address address) {  
		ModelAndView view = new ModelAndView("weather/result");
		String endpoint = prop.getValue("weathercoordinates");
		endpoint = endpoint.replace("{lat}", address.getLatitude()).replace("{lon}", address.getLongitude());
		String data = connector.getData(endpoint);
		WeatherJsonParser parser = new WeatherJsonParser(data);
		System.out.println(data);
		Weather currentWeather = parser.populateWeatherModel();
		view.addObject("weather", currentWeather);
		return view;
	}
	
	//slå ihop de här metoderna
	@RequestMapping(value = "/ddd", method = RequestMethod.POST)
	@ResponseBody
	public ModelAndView dddd(@Valid Address address, BindingResult result) {
		
		ModelAndView view = new ModelAndView("weather/result");
		if(result.hasErrors()) {
			view.setViewName("weather/select");
			view.addObject("address", address);
			return view;
		}
		String endpoint = prop.getValue("weatherendpoint");
		String url = endpoint.replace("{}", address.getCity() + "," + address.getCountry());
		String data = connector.getData(url);
		WeatherJsonParser parser = new WeatherJsonParser(data);
		Weather currentWeather = parser.populateWeatherModel();
		view.addObject("weather", currentWeather);
		return view;
	}
	/**
	 * Fetches some old json string, for testing, can be deleted
	 * @param address
	 * @param model
	 * @return
	 */
	@RequestMapping(value = "/getweatherdummy", method = RequestMethod.GET)
	public String dummy(Model model) {
		String data = prop.getValue("weatherjson");
		WeatherJsonParser parser = new WeatherJsonParser(data);
		Weather currentWeather = parser.populateWeatherModel();
		model.addAttribute("weather", currentWeather);
		return "weather/result";
	}
	
}
