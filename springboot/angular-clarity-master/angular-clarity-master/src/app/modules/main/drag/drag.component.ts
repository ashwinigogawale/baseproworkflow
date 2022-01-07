import { Component, OnInit } from '@angular/core';
import { FormGroup, FormBuilder, FormArray, Validators, FormControl } from '@angular/forms';
import { DemoService } from 'src/app/services/api/demo.service';
import { DiputesemoService } from 'src/app/services/api/diputesemo.service';
import { BillingdemoService } from 'src/app/services/api/billingdemo.service';
import { CustomerdemoService } from 'src/app/services/api/customerdemo.service';
import { ItemdemoService } from 'src/app/services/api/itemdemo.service';
@Component({
  selector: 'app-drag',
  templateUrl: './drag.component.html',
  styleUrls: ['./drag.component.scss']
})
export class DragComponent implements OnInit {
  info: boolean = false;
  dipute:boolean=false;
  invoice:boolean=false;
  customer:boolean=false;
  item:boolean=false;
  loading = false;
  public entryForm: FormGroup;
  givendata;
  diputedata;
  billingdata;
  itemdata;
  custdata;
  clickedID:number;
  constructor( private _fb: FormBuilder,
    private mainService: DemoService,
    private diputeservice:DiputesemoService,
    private billingservice:BillingdemoService,
    private custservice:CustomerdemoService,
    private itemservice:ItemdemoService) { }







  ngOnInit(): void {
    this.getData();
  }
  getData() {
    this.mainService.getbyid(402).subscribe((data) => {
      console.log(data);
      this.givendata = data;
     // this.university = data.author;

    });

    this.entryForm = this._fb.group({
     id:[null],
      p_name:[null] ,
      p_position_descrition:[null] ,
      p_request_time:[null] ,
      a_name:[null] ,
      a_position_descrition:[null],
      a_request_time:[null],
      re_id:[null],
      re_invoice_no:[null],
      re_invoice_date:[null],
      in_status:[null],
      in_invoice_type:[null],
      in_customer_order_no:[null],
      in_service_request_by:[null],
      in_service_rendered_from:[null],
      in_service_rendered_to:[null],
      in_vessel_code:[null],
      in_vessel_name:[null],
      in_in_voyage:[null],
      in_out_voyage:[null],
      in_service_id:[null],
      in_line_code:[null],
      in_callno_sign:[null],
      in_LOA:[null],
      in_LOA_UOM:[null],
      in_GT:[null],
      in_location:[null],
      in_ATA:[null],
      in_ATD:[null],
      in_po_no:[null],
      in_customer_code:[null],
      in_special_price:[null],
      in_customer_name:[null],
      in_remark:[null],
      created_by:[null],
      created_on:[null],
      updated_by:[null],
      updated_on:[null],


        product: this._fb.array([this.initLinesForm()]),



      });

  }
  initLinesForm() {
    return this._fb.group({
      filename: [null],
      external: [null],

    })
  }
  get controls() {
    return (this.entryForm.get("product") as FormArray).controls;
  }
  onRemoveLines(index: number) {
    (<FormArray>this.entryForm.get("product")).removeAt(index);
  }
  onAddLines() {
    (<FormArray>this.entryForm.get("product")).push(this.initLinesForm());
  }
  goToWhoColumns() {
    this.info = !this.info;
}
gotodiputeid(){
  this.dipute=!this.dipute;
  this.diputeservice.getAll().subscribe((data) => {
    console.log(data);
    this.diputedata = data;
   // this.university = data.author;

  });
}
gotoinvoice(){
  this.invoice=!this.invoice;
  this.getbillingData();
}
getbillingData() {
  this.billingservice.getbyid(420).subscribe((data) => {
    console.log(data);
    this.billingdata = data;
   // this.university = data.author;

  });

}
gotocustomerid(){
this.customer=!this.customer;
this.custservice.getAll().subscribe((data) => {
  console.log(data);
  this.custdata = data;
 // this.university = data.author;

});
}
gotoitem(){
  this.item=!this.item;
  this.itemservice.getAll().subscribe((data) => {
    console.log(data);
    this.itemdata = data;
   // this.university = data.author;

  });
}
getID(id:number){
  this.clickedID=id;
this.givendata.re_id=this.clickedID;
}
}
