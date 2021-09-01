import { Component, OnInit } from '@angular/core';
import {SuregitService} from 'src/app/services/api/suregit.service';
import{GitfolderService} from 'src/app/services/api/gitfolder.service';
import {Suregit} from 'src/app/models/suregit';
import { Surestar } from 'src/app/models/surestar';
import { Surename } from 'src/app/models/surename';
@Component({
  selector: 'app-gitfolder',
  templateUrl: './gitfolder.component.html',
  styleUrls: ['./gitfolder.component.scss']
})
export class GitfolderComponent implements OnInit {
  showme:boolean=false;
  suregit:Suregit[];
  surestar:Surestar;
  sure:Surename;
  name:any="";
  gitid:any="";
    msg: any;
  id: any;
  constructor(private suregitservice:SuregitService,
    private gitservice:GitfolderService) { }

  ngOnInit(): void {




    this.gitservice.getAll().subscribe((data) => {
      this.suregit = data.tree;
      console.log(data.tree);

    });
//star,fork
this.surestar = new Surestar();
this.suregitservice.getstar().subscribe((data) => {
  this.surestar= data;
  console.log(this.surestar);

});
//name

this.sure= new Surename();
this.suregitservice.getname().subscribe((data) => {
  this.sure= data;
  console.log(data);
 this.name = data[0]["commit"]["committer"];
 this.gitid=data[0]["commit"]["tree"]["sha"];
this.msg=data[0]["commit"]["message"];
});
  }
  toggle(){
    this.showme=!this.showme;
  }


}
