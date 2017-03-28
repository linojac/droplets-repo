package com.droplets.rs.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.droplets.rs.model.DataCenterConfigMaster;
import com.droplets.rs.model.DataCenterMaster;
import com.droplets.rs.model.OperatingSystemMaster;
import com.droplets.rs.model.OptionalConfigMaster;
import com.droplets.rs.repository.DataCenterConfigMasterRepository;
import com.droplets.rs.repository.DataCenterMasterRepository;
import com.droplets.rs.repository.OperatingSystemMasterRepository;
import com.droplets.rs.repository.OptionalConfigMasterRepository;
import com.droplets.rs.service.MasterDataService;
@Service
public class MasterDataServiceImpl implements MasterDataService {

	@Autowired
	public DataCenterMasterRepository dataCenterMasterRepository;
	@Autowired
	public DataCenterConfigMasterRepository dataCenterConfigMasterRepository;
	@Autowired
	public OperatingSystemMasterRepository operatingSystemMasterRepository;
	@Autowired
	public OptionalConfigMasterRepository optionalConfigMasterRepository;

	@Override
	public List<DataCenterMaster> getAllDataCenters() {
		return dataCenterMasterRepository.findAll();
	}

	@Override
	public List<DataCenterConfigMaster> getAllDataCenterConfigs() {
		return dataCenterConfigMasterRepository.findAll();
	}

	@Override
	public List<OptionalConfigMaster> getAllDataCenterOptions() {
		// TODO Auto-generated method stub
		return optionalConfigMasterRepository.findAll();
	}

	@Override
	public List<OperatingSystemMaster> getAllOperatingSystems() {
		// TODO Auto-generated method stub
		return operatingSystemMasterRepository.findAll();
	}

}
