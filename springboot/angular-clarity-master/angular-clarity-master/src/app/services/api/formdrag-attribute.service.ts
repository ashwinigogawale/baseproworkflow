import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import baseUrl from '../formio-services/helper';

@Injectable({
  providedIn: 'root'
})
export class FormdragAttributeService {

  constructor(
    private _http: HttpClient
  ) { }

  public add(att: any){
    return this._http.post(`${baseUrl}/attributes/create`, att);
  }
}
