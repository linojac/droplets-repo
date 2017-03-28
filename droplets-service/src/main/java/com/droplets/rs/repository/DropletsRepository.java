package com.droplets.rs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.droplets.rs.model.Droplet;

@Repository
public interface DropletsRepository extends JpaRepository<Droplet, Long> {

}
