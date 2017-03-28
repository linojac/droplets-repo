package com.droplets.rs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.droplets.rs.model.DataCenterConfigMaster;
@Repository
public interface DataCenterConfigMasterRepository extends JpaRepository<DataCenterConfigMaster, Long>{

}
