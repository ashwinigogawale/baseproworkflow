import { Component, OnInit , TemplateRef, ViewChild, ViewEncapsulation} from '@angular/core';
import { FormBuilder } from '@angular/forms';
import { ActivatedRoute, Router } from '@angular/router';
import { Rn_Fb_Header } from 'src/app/models/Rn_Fb_Header';
import { AlertService } from 'src/app/services/alert.service';
import { ModulesetupService } from 'src/app/services/api/modulesetup.service';
import { WireframeService } from 'src/app/services/api/wireframe.service';
import { ExcelService } from 'src/app/services/excel.service';
import * as moment from 'moment';
import { ToastrService } from 'ngx-toastr';
import { WireframeLineService } from 'src/app/services/api/wireframe-line.service';
@Component({
  selector: 'app-allwireframe',
  templateUrl: './allwireframe.component.html',
  styleUrls: ['./allwireframe.component.scss'],
  encapsulation: ViewEncapsulation.Emulated
})
export class AllwireframeComponent implements OnInit {

  basic: boolean = false;
  columns: any[];
  rows: any[];
  temp = [];
  isLoading: boolean = false;
  rowSelected :any= {};
  modaldelete=false;
  loading = false;
  moduleId: number;
  wireFrames: Rn_Fb_Header[];
  selected: any[] = [];

  id: any;
  allLines: any;
  lineOfHeader: Array<any>;

  constructor(
    private _fb: FormBuilder,
    private router: Router,
    private route: ActivatedRoute,
    private excel: ExcelService,
    private moduleService: ModulesetupService,
    private wireframeService: WireframeService,
    private alertService: AlertService,
    private toastr: ToastrService,
    private _line: WireframeLineService
  ) {
    this.lineOfHeader = new Array<any>();
  }

  ngOnInit(): void {
    this.moduleId = this.wireframeService.getModuleId(); // get from session storage
    console.log(this.moduleId);

    this.getModuleWireframes(this.moduleId);
  }
  getModuleWireframes(id: number) {
    this.isLoading = true;
    //this.moduleService.getById(id).subscribe((data) => {
      this.wireframeService.getAll(id).subscribe((data) => {
      this.isLoading = false;
      console.log(data);
      //this.wireFrames = data.rn_fb_headers;
      this.wireFrames = data.items;
      console.log('wireframes: ', this.wireFrames);
      this.rows = this.wireFrames;
      this.temp = [...this.wireFrames];
    });
  }
  goToAdd() {
    this.router.navigate(["../project/modules/wireframe/types"], { relativeTo: this.route });

  }
  goToEdit(id: number,editmode: string) {
    this.router.navigate(["../project/modules/wireframe/edit/" + id], { relativeTo: this.route });

  }
  goToEdit2(id: number,editmode: string) {
    this.router.navigate(["../project/modules/wireframe/edit2/" + id], { relativeTo: this.route });

  }

  update(id: any,editmode: string) {
    this.router.navigate(["../project/modules/wireframe/update/" + id], { relativeTo: this.route });
    this._line.getAllLines().subscribe(
      (data: any)=>{
        this.allLines = data;
        for(let line of data){
          if(line.header_id == id){
            this.lineOfHeader.push(line);
          }
        }
        console.log(this.lineOfHeader);

      },
      (error: any)=>{
        console.log('Error occured while getting all lines data...');

      }
    );
  }
  onExport() {
    this.excel.exportAsExcelFile(this.rows, 'user_',
      moment().format('YYYYMMDD_HHmmss'))
  }
  onDelete(row) {
    this.rowSelected = row;
     this.modaldelete=true;
  }

  delete(id)
  {
    this.modaldelete = false;
    console.log("in delete  "+id);
    this.wireframeService.deleteField(id).subscribe(
      (data) => {
        console.log(data);
        this.ngOnInit();
      },
    );


  }
}
