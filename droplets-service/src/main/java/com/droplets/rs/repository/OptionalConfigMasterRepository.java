package com.droplets.rs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.droplets.rs.model.OptionalConfigMaster;
@Repository
public interface OptionalConfigMasterRepository extends JpaRepository<OptionalConfigMaster, Long> {

}
