import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class SchedulerService {

  baseurl='http://52.55.113.87:31183';//http://localhost:8085
  constructor(private _http: HttpClient,) { }
  public getAllinfo() {
    return this._http.get(`${this.baseurl}/schedule`);
  }
  public getAll() {
    return this._http.get(`${this.baseurl}/pipiline-completed`);
  }
  public getAllpipe() {
    return this._http.get(`${this.baseurl}/getAllPipeline`);
  }

  public createpipe(data: any){
    return this._http.post(`${this.baseurl}/addPipeline`, data);
  }
  public create(data: any){
    return this._http.post(`${this.baseurl}/schedule`,data);
  }
}
