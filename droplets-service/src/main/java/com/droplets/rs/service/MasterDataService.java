package com.droplets.rs.service;

import java.util.List;

import com.droplets.rs.model.DataCenterConfigMaster;
import com.droplets.rs.model.DataCenterMaster;
import com.droplets.rs.model.OperatingSystemMaster;
import com.droplets.rs.model.OptionalConfigMaster;

public interface MasterDataService {

	List<DataCenterMaster> getAllDataCenters();

	List<DataCenterConfigMaster> getAllDataCenterConfigs();

	List<OptionalConfigMaster> getAllDataCenterOptions();

	List<OperatingSystemMaster> getAllOperatingSystems();

}
