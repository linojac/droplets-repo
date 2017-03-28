import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class MasterDataService {

    constructor(private _http: Http) { }

    getDataCenters() {
        return this._http.get('http://localhost:8080/master/data-centers')
            .map(res => res.json());
    }
    
    getDataCenterConfigs() {
        return this._http.get('http://localhost:8080/master/dc-configs')
            .map(res => res.json());
    }
    
    getDataCenterOptions() {
        return this._http.get('http://localhost:8080/master/dc-options')
            .map(res => res.json());
    }
    
    getOperatingSystems() {
        return this._http.get('http://localhost:8080/master/operating-systems')
            .map(res => res.json());
    }

}
