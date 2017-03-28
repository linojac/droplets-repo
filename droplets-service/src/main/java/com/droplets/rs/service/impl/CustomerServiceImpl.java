package com.droplets.rs.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.droplets.rs.model.Customer;
import com.droplets.rs.repository.CustomerReppositoy;
import com.droplets.rs.service.CustomerService;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerReppositoy customerRepository;
	@Override
	public Customer getCustomer(String userName) {
		// TODO Auto-generated method stub
		return customerRepository.findByUserName(userName);
	}

}
