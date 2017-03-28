import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

@Injectable()
export class DropletsService {

    constructor(private _http: Http) { }

    postCreateDroplets(data: string) {

        return this._http.post('http://localhost:8080/droplets/create',
            data)
            .map(res => res.json());
    }

}
