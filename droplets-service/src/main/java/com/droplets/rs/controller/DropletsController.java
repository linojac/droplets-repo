package com.droplets.rs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.droplets.rs.model.Droplet;
import com.droplets.rs.service.DropletsService;

/**
 * This is a rest controller class for handling all rest calls for the droplets
 * service.
 * 
 * @author Lino Jacob P J
 *
 */
@CrossOrigin(origins="http://localhost:4200")
@RestController
@RequestMapping("/droplets")
public class DropletsController {

	@Autowired
	public DropletsService dropletsService;

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public String createDroplets(@RequestBody List<Droplet> droplets) {

		dropletsService.createDroplets(droplets);

		return "success";
	}

}
