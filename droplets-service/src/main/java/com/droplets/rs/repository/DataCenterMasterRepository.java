package com.droplets.rs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.droplets.rs.model.DataCenterMaster;

@Repository
public interface DataCenterMasterRepository extends JpaRepository<DataCenterMaster, Long> {

}
