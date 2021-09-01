import { Injectable } from '@angular/core';
import { Observable } from "rxjs";
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class GitfolderService {
 private baseURL = "http://localhost:3000/repos/ganeshris/Villa/git/trees/29af0be83c536";
  //private baseURL = "http://localhost:3000/repos/ganeshris/Villa/git/trees/f8acd30ef1a45";
private base= "http://localhost:3000/repos/ganeshris/Villa/git/trees/4ef7734406";

  constructor( private http:HttpClient,) { }

  getAll(): Observable<any> {
    //Create Request URL params

    return this.http.get(this.baseURL);
  }
  getById(id: number): Observable<any> {
    const _http = this.base + "/" + id;
    return this.http.get(_http);
  }
}
