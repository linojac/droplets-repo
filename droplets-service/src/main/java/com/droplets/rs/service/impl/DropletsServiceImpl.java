package com.droplets.rs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.droplets.rs.model.Droplet;
import com.droplets.rs.repository.DropletsRepository;
import com.droplets.rs.service.DropletsService;

@Service
public class DropletsServiceImpl implements DropletsService {

	@Autowired
	public DropletsRepository dropletsRepository;
	
	@Override
	public List<Droplet> createDroplets(List<Droplet> droplets) {
		// TODO Auto-generated method stub
		return dropletsRepository.save(droplets);
	}

}
