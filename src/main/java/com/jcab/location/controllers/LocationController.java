package com.jcab.location.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jcab.location.entities.Location;
import com.jcab.location.service.LocationService;
import com.jcab.location.util.EmailUtil;


@Controller
public class LocationController {
	
	@Autowired
	LocationService service;
	
	@Autowired
	EmailUtil emilUtil;
	
	@RequestMapping("/showCreate")
	public String showCreate() {
		return "createLocation";
	}
	
	@RequestMapping("/saveLoc")
	public String saveLocation(@ModelAttribute("location") Location location, ModelMap modelMap) {
	   Location locationSaved =  service.saveLocation(location);
	   String msg = "Location saved with id: " + locationSaved.getId();
	   modelMap.addAttribute("msg",  msg);
	   
	   //  Enviar e-mail
	  // emilUtil.sendEmail("johncaboclojavawebdeveloper@gmail.com", "Location Saved", 
	//		   "Location Saved Successfully and about to return a response");
	   
	   return "createLocation";
	}

	@RequestMapping("/displayLocations")
	public String displayLocations(ModelMap modelMap) {
	   List<Location> locations = service.getAllLocation();
	   modelMap.addAttribute("locations",locations);
	   return "displayLocations";
	}
	                 
	@RequestMapping("deleteLocation")
	public String deleteLocation(@RequestParam("id") int id, ModelMap modelMap) {
		
		//  Location location = service.getLocationById(id);
		Location location = new Location();
		location.setId(id);
		service.deleteLocation(location);
		List<Location> locations =  service.getAllLocation();
		modelMap.addAttribute("locations",locations);
		return "displayLocations";
	}
	
	@RequestMapping("/showUpdate")
	public String showUpdate(@RequestParam("id") int id, ModelMap modelMap) {
		Location location = service.getLocationById(id);
		service.deleteLocation(location);
		modelMap.addAttribute("location",location);
		return "updateLocation";
	}
	
	@RequestMapping("/updateLoc")
	public String updateLocation(@ModelAttribute("location") Location location, ModelMap modelMap) {
		service.updateLocation(location);
		List<Location> locations =  service.getAllLocation();
		modelMap.addAttribute("locations",locations);
		return "displayLocations";
	}
		
}
