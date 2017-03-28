package com.droplets.rs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.droplets.rs.model.DataCenterConfigMaster;
import com.droplets.rs.model.DataCenterMaster;
import com.droplets.rs.model.OperatingSystemMaster;
import com.droplets.rs.model.OptionalConfigMaster;
import com.droplets.rs.service.MasterDataService;

@RestController
@RequestMapping("/master")
public class MasterDataController {

	@Autowired
	public MasterDataService masterDataService;
	
	@RequestMapping("/data-centers")
	public List<DataCenterMaster> getAllDataCenters(){
		
		List<DataCenterMaster> dataCenters  = masterDataService.getAllDataCenters();
				
		return dataCenters;
	}
	
	@RequestMapping("/dc-configs")
	public List<DataCenterConfigMaster> getAllDataCenterConfigs(){
		
		List<DataCenterConfigMaster> dataCenters  = masterDataService.getAllDataCenterConfigs();
				
		return dataCenters;
	}
	
	@RequestMapping("/dc-options")
	public List<OptionalConfigMaster> getAllDataCenterOptions(){
		
		List<OptionalConfigMaster> dataCenters  = masterDataService.getAllDataCenterOptions();
				
		return dataCenters;
	}
	
	@RequestMapping("/operating-systems")
	public List<OperatingSystemMaster> getAllOperatingSystems(){
		
		List<OperatingSystemMaster> dataCenters  = masterDataService.getAllOperatingSystems();
				
 		return dataCenters;
	}
	
}
