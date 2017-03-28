package com.droplets.rs.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.droplets.rs.model.Customer;
import com.droplets.rs.service.impl.CustomerServiceImpl;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	public CustomerServiceImpl customerService;

	@RequestMapping("/{userName}")
	public Customer getCustomer(@PathVariable("userName") String userName) {

		Customer customer = customerService.getCustomer(userName);

		return customer;
	}
}
