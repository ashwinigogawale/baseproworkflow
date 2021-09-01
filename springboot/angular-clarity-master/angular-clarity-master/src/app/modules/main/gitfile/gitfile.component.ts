import { Component, OnInit } from '@angular/core';
import{GitfileService} from 'src/app/services/api/gitfile.service';
import {Suregit} from 'src/app/models/suregit';
import { Surestar } from 'src/app/models/surestar';
import { Surename } from 'src/app/models/surename';
import { SuregitService } from 'src/app/services/api/suregit.service';
@Component({
  selector: 'app-gitfile',
  templateUrl: './gitfile.component.html',
  styleUrls: ['./gitfile.component.scss']
})
export class GitfileComponent implements OnInit {
  showme:boolean=false;
  suregit:Suregit[];
  surestar:Surestar;
  sure:Surename;
  name:any="";
  gitid:any="";
    msg: any;

  constructor(private gitfileservice:GitfileService,
    private suregitservice:SuregitService,) { }

  ngOnInit(): void {
    this.gitfileservice.getAll().subscribe((data) => {
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
