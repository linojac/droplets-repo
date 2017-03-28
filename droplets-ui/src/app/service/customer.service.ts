import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class CustomerService {

    constructor(private _http: Http) { }


     getCustomerByUserName(userName: string) {
        return this._http.get('http://localhost:8080/customer/'+userName)
            .map(res => res.json());
    }
}
