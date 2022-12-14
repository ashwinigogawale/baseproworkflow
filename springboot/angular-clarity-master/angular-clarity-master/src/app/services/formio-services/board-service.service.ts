import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import baseUrl from './helper';

@Injectable({
  providedIn: 'root'
})
export class BoardServiceService {

  constructor(
    private _http: HttpClient
  ) { }

  // create board
  public createBoard(board: any){
    return this._http.post(`${baseUrl}/api/create`, board);
  }

  // update board
  public updateBoard(board: any){
    return this._http.put(`${baseUrl}/api/update`, board);
  }

  // get all boards
  public getAllBoards(){
    return this._http.get(`${baseUrl}/api/get-all`);
  }

  // get one board
  public getOneBoard(bId: any){
    return this._http.get(`${baseUrl}/api/get-one/${bId}`);
  }

  // delete board
  public deleteBoard(bid: any){
    return this._http.delete(`${baseUrl}/api/delete-board/${bid}`);
  }
}
