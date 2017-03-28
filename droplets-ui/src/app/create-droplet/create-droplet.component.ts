import { Component, OnInit } from '@angular/core';
import { MasterDataService } from './../service/master-data.service';
import { CustomerService } from './../service/customer.service';
import { DropletsService } from './../service/droplets.service';

@Component({
    selector: 'app-create-droplet',
    templateUrl: './create-droplet.component.html',
    styleUrls: ['./create-droplet.component.css']
})
export class CreateDropletComponent implements OnInit {

    constructor(private _masterDataService: MasterDataService, private _customerService: CustomerService, private _dropletsService: DropletsService) { }

    dataCenters: Object[];
    dcConfigs: Object[];
    operatingSystems: Object[];
    optionalConfigs: Object[];
    customer: Object;

    ngOnInit() {
        this._masterDataService.getDataCenters().subscribe(data => this.dataCenters = data);
        this._masterDataService.getDataCenterConfigs().subscribe(data => this.dcConfigs = data);
        this._masterDataService.getOperatingSystems().subscribe(data => this.operatingSystems = data);
        this._masterDataService.getDataCenterOptions().subscribe(data => this.optionalConfigs = data);
        this._customerService.getCustomerByUserName('linojac').subscribe(data => this.customer = data);
    }

}
