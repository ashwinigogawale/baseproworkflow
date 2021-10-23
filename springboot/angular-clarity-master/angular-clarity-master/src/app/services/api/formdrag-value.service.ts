import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import baseUrl from '../formio-services/helper';

@Injectable({
  providedIn: 'root'
})
export class FormdragValueService {

  constructor(
    private _http: HttpClient
  ) { }

  public add(val: any){
    return this._http.post(`${baseUrl}/value/create`, val);
  }
}
