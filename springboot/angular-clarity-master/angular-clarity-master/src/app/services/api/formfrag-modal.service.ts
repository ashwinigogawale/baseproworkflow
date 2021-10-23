import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import baseUrl from '../formio-services/helper';

@Injectable({
  providedIn: 'root'
})
export class FormfragModalService {

  constructor(
    private _http: HttpClient
  ) { }

  public add(model: any){
    return this._http.post(`${baseUrl}/model/create`, model);
  }
}
