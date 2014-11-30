package com.sprmvc.controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.sprmvc.model.Phone;
import com.sprmvc.service.PhoneService;

@Controller
@RequestMapping(value="phones")
public class PhonesController {

	@Autowired
	private PhoneService phoneService;
	
	@RequestMapping(value="menu")
	public String phonesMenu() {
		return "phones/menu";
	}

	@RequestMapping(value="test")
	public String test() {
		return "phones/test";
	}
	
	// add validation later
	@RequestMapping(value="add")
	public String addNewPhone(Model model) {
		model.addAttribute("phone", new Phone());
		return "phones/add";
	}

	@RequestMapping(value="save")
	public String savePhone(@ModelAttribute Phone phone, Model model) {
		phoneService.create(phone);
		model.addAttribute("phone", phone);
		return "phones/result";
	}
	
	@RequestMapping(value="view", method = RequestMethod.GET)
	public ModelAndView displayAll() {
		List<Phone> listOfPhones = phoneService.findAll();
		ModelAndView view = new ModelAndView("phones/view");
		view.addObject("listOfPhones", listOfPhones);
		return view;
	}

	@RequestMapping(value="showphones", method = RequestMethod.GET)
	public ModelAndView phonesViewPage() {
		ModelAndView view = new ModelAndView("phones/showphones");
		List<Phone> listOfPhones = phoneService.findAll();
		view.addObject("listOfPhones", listOfPhones);
		return view;
	}
	
	@RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
	public String edit(@PathVariable int id, Model model) {
		Phone phone = phoneService.findById(id);
		model.addAttribute("phone", phone);
		return "phones/edit";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView update(@ModelAttribute Phone phone) {
		phoneService.update(phone);
		ModelAndView view = new ModelAndView("phones/view");
		List<Phone> listOfPhones = phoneService.findAll();
		view.addObject("listOfPhones", listOfPhones);
		return view;
	}
	
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable Integer id, @RequestParam("from") String from) {
		phoneService.delete(id);
		return "redirect:/phones/" + from;
	}
	
	@RequestMapping(value = "/search/{name}", method = RequestMethod.GET)
	public String delete(@PathVariable String name, Model model) {
		List<Phone> list = phoneService.findByName(name);
		model.addAttribute("list", list);
		return "";
	}
}
