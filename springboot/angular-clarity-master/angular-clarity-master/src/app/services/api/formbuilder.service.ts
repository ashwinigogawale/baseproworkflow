import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { HttpHeaders } from '@angular/common/http';
import { map } from 'rxjs/operators';
import {Observable} from 'rxjs';
@Injectable({
  providedIn: 'root'
})
export class FormbuilderService {
  public formData: Array<any> = [];
  private url;
  constructor(private _http: HttpClient) {
    this.url = 'https://parking-1e126.firebaseio.com/form.json';
   }

   addForm(data) {
    let json = JSON.stringify(data);
    let params = json;
    let headers = new HttpHeaders({'Content-Type':'application/x-www-form-urlencoded'});
    return this._http.post(this.url, params,{headers: headers}).pipe(map((response: any) => response.json()));
}

getForm(){
  let headers = new  HttpHeaders({'Content-Type':'application/x-www-form-urlencoded'});
  return this._http.get(this.url,{headers: headers});
}

createFormName(form){
  let arr={};
  let data = form;
  let formName:string = '';
  for(let i=0; i<data.length;i++){
    if(data[i].type=== 'header'){
      formName = data[i].label;
      break;
    }
  }
  arr = {
    name: formName,
    formData: data
  }
  return arr;
}
}
