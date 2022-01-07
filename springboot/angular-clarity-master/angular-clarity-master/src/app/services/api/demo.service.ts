import { Injectable } from '@angular/core';
import { ApiRequestService } from "./api-request.service";
import baseUrl from './helper';
import { Observable } from "rxjs";
import { HttpClient } from '@angular/common/http';
import { demo } from 'src/app/models/demo';
@Injectable({
  providedIn: 'root'
})
export class DemoService {

  private baseURL = "ncso/get-one";
  constructor(
    private apiRequest: ApiRequestService,
    private _http: HttpClient
  ) { }
  public getAll() {
    return this._http.get(`${baseUrl}/ncso/get-all`);
  }
  public getbyid(Id: any){
    return this._http.get(`${baseUrl}/ncso/get-one/${Id}`);
  }
  public create(data: any){
    return this._http.post(`${baseUrl}/ncso/create`, data);
  }
// update
public update(data: any){
  return this._http.put(`${baseUrl}/ncso/create`, data);
}
}
