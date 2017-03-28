package com.droplets.rs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.droplets.rs.model.OperatingSystemMaster;
@Repository
public interface OperatingSystemMasterRepository extends JpaRepository<OperatingSystemMaster, Long>{

}
