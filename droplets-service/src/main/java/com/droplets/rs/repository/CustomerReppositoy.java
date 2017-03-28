package com.droplets.rs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.droplets.rs.model.Customer;

@Repository
public interface CustomerReppositoy extends JpaRepository<Customer, Long> {

	Customer findByUserName(String userName);
}
