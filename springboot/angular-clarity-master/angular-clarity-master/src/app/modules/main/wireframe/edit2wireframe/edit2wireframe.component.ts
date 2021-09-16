import { Component, OnInit } from '@angular/core';
import { AfterViewInit,  NgZone } from '@angular/core';
import { Router } from '@angular/router';
import { FormbuilderService } from 'src/app/services/api/formbuilder.service';
declare var $: any;
@Component({
  selector: 'app-edit2wireframe',
  templateUrl: './edit2wireframe.component.html',
  styleUrls: ['./edit2wireframe.component.scss']
})
export class Edit2wireframeComponent implements OnInit,AfterViewInit {
  formBuilder: any;



  constructor(private ngZone: NgZone,
    private router: Router,
    private  _formService:FormbuilderService) { }


  ngOnInit(): void {

  }


  ngAfterViewInit(): void {
    setTimeout(()=>{
        // delay 2 seconds waiting scripts to load

          this.ngZone.runOutsideAngular(() => {
             //$(document.getElementById('fb-editor')).formBuilder();
             var fbEditor = document.getElementById('fb-editor');
             this.formBuilder = $(fbEditor).formBuilder();
           });

    }, 2000)


  }

  saveData(){
    let data = this.formBuilder.actions.getData();
    let formData = this._formService.createFormName(data);
    this._formService.addForm(formData).subscribe(
      response => {
        console.log(response);
        this.clearData();
        this.router.navigate(['/form-list']);
      },
      error => {
        console.log(<any> error);
      });
  }
  clearData(){
    this.formBuilder.actions.clearFields();
  }
showData(){
    this.formBuilder.actions.showData();
  }
}
