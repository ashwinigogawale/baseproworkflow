import { Injectable } from '@angular/core';
import { Observable } from "rxjs";
import { HttpClient } from '@angular/common/http';
@Injectable({
  providedIn: 'root'
})
export class GitfileService {
  private baseURL = "http://localhost:3000/repos/ganeshris/Villa/git/blobs/db4c6d9b6797601";
  //private baseURL = "http://localhost:3000/repos/ganeshris/Villa/git/trees/f8acd30ef1a45"
  constructor(private http:HttpClient) { }
  getAll(): Observable<any> {
    //Create Request URL params

    return this.http.get(this.baseURL);
  }
  getById(id: number): Observable<any> {
    const _http = this.baseURL + "/" + id;
    return this.http.get(_http);
  }
}
