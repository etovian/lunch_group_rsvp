package com.stgutah.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.stgutah.model.Event;
import com.stgutah.model.Invitation;
import com.stgutah.model.Person;
import com.stgutah.service.InvitationService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	private InvitationService invitationService;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home2";
	}

	@RequestMapping(value = "/viewInvitations", method = RequestMethod.GET)
	public String viewInvitations() {
		logger.info("viewInvitations requested");
		
		return "templates/ViewInvitations";
	}
	
	@RequestMapping(value = "/getUsers", method = RequestMethod.GET)
	public @ResponseBody Collection<Person> getUsers(Model model) {
		
		return invitationService.getUsers(); 
	}
	
	@RequestMapping(value = "/getInvitations", method = RequestMethod.GET)
	public @ResponseBody Collection<Invitation> getInvitations() {
//		model.addAttribute("invitations", invitationService.getInvitations());
		return invitationService.getInvitations();
	}
	
	@RequestMapping(value = "/getLocations", method = RequestMethod.GET)
	public void getLocations(Model model) {
		
		model.addAttribute("locations", invitationService.getLocations());
	}
	
	@RequestMapping(value = "/getEvents", method = RequestMethod.GET)
	public void getEvents(Model model) {
		
		model.addAttribute("events", invitationService.getEvents());
	}
	
	@RequestMapping(value = "/saveInvitationEvent", method = RequestMethod.POST)
	public @ResponseBody Event saveInvitationEvent(@RequestBody Event event) {
		return event;
	}
}
