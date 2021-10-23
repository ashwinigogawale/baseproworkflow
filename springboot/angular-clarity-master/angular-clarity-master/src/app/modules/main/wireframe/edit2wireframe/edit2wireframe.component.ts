import { Component, OnInit } from '@angular/core';
import { AfterViewInit, NgZone } from '@angular/core';
import { DndDropEvent, DropEffect } from 'ngx-drag-drop';
import { ActivatedRoute, Router } from '@angular/router';
import { ToastrService } from 'ngx-toastr';
import { field, value } from 'src/app/global.model';
import { AlertService } from 'src/app/services/alert.service';
import { FormbuilderService } from 'src/app/services/api/formbuilder.service';
import { FormdragAttributeService } from 'src/app/services/api/formdrag-attribute.service';
import { FormdragValueService } from 'src/app/services/api/formdrag-value.service';
import { FormfragModalService } from 'src/app/services/api/formfrag-modal.service';
import { WireframeLineService } from 'src/app/services/api/wireframe-line.service';
declare var $: any;
@Component({
  selector: 'app-edit2wireframe',
  templateUrl: './edit2wireframe.component.html',
  styleUrls: ['./edit2wireframe.component.scss']
})
export class Edit2wireframeComponent implements OnInit, AfterViewInit {
  formBuilder: any;

  value: value = {
    label: "",
    value: ""
  };
  success = false;

  fieldModels: Array<field> = [
    {
      "type": "text",
      "icon": "fa-font",
      "label": "Text",
      "description": "Enter your name",
      "placeholder": "Enter your name",
      "className": "form-control",
      "subtype": "text",
      "regex": "",
      "handle": true
    },
    {
      "type": "email",
      "icon": "fa-envelope",
      "required": true,
      "label": "Email",
      "description": "Enter your email",
      "placeholder": "Enter your email",
      "className": "form-control",
      "subtype": "text",
      "regex": "^([a-zA-Z0-9_.-]+)@([a-zA-Z0-9_.-]+)\.([a-zA-Z]{2,5})$",
      "errorText": "Please enter a valid email",
      "handle": true
    },
    {
      "type": "phone",
      "icon": "fa-phone",
      "label": "Phone",
      "description": "Enter your phone",
      "placeholder": "Enter your phone",
      "className": "form-control",
      "subtype": "text",
      "regex": "^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$",
      "errorText": "Please enter a valid phone number",
      "handle": true
    },
    {
      "type": "number",
      "label": "Number",
      "icon": "fa-html5",
      "description": "Age",
      "placeholder": "Enter your age",
      "className": "form-control",
      "value": "20",
      "min": 12,
      "max": 90
    },
    {
      "type": "date",
      "icon": "fa-calendar",
      "label": "Date",
      "placeholder": "Date",
      "className": "form-control"
    },
    {
      "type": "datetime-local",
      "icon": "fa-calendar",
      "label": "DateTime",
      "placeholder": "Date Time",
      "className": "form-control"
    },
    {
      "type": "textarea",
      "icon": "fa-text-width",
      "label": "Textarea"
    },
    {
      "type": "paragraph",
      "icon": "fa-paragraph",
      "label": "Paragraph",
      "placeholder": "Type your text to display here only"
    },
    {
      "type": "checkbox",
      "required": true,
      "label": "Checkbox",
      "icon": "fa-list",
      "description": "Checkbox",
      "inline": true,
      "values": [
        {
          "label": "Option 1",
          "value": "option-1"
        },
        {
          "label": "Option 2",
          "value": "option-2"
        }
      ]
    },
    {
      "type": "radio",
      "icon": "fa-list-ul",
      "label": "Radio",
      "description": "Radio boxes",
      "values": [
        {
          "label": "Option 1",
          "value": "option-1"
        },
        {
          "label": "Option 2",
          "value": "option-2"
        }
      ]
    },
    {
      "type": "autocomplete",
      "icon": "fa-bars",
      "label": "Select",
      "description": "Select",
      "placeholder": "Select",
      "className": "form-control",
      "values": [
        {
          "label": "Option 1",
          "value": "option-1"
        },
        {
          "label": "Option 2",
          "value": "option-2"
        },
        {
          "label": "Option 3",
          "value": "option-3"
        }
      ]
    },
    {
      "type": "file",
      "icon": "fa-file",
      "label": "File Upload",
      "className": "form-control",
      "subtype": "file"
    },
    {
      "type": "button",
      "icon": "fa-paper-plane",
      "subtype": "submit",
      "label": "Button"
    }
  ];

  modelFields: Array<field> = [];
  model1: any = {
    name: 'Form name...',
    description: 'Form Description...',
    attributes: this.modelFields,
    theme: {

      bannerImage: ""
    },
    
  };

  

  wfline = {
    header_id: '100',
    model: ''
  }

  wflineget = {
    header_id: '',
    model: ''
  }

  modal = false;
  report = false;
  reports: any = [];
  show: any;

  id: any;


  constructor(
    private ngZone: NgZone,
    private router: Router,
    private _route: ActivatedRoute,
    private _formService: FormbuilderService,
    private alertService: AlertService,
    private toastr: ToastrService,
    private _model: FormfragModalService,
    private _attr: FormdragAttributeService,
    private _val: FormdragValueService,
    private _line: WireframeLineService
  ) { }


  ngOnInit(): void {

    this.id = this._route.snapshot.params.hid;
    console.log(this.id);
    

    this._line.getOneFromDBById(378).subscribe(
      (data: any)=>{
        // this.wflineget = data;
        // console.log(this.wflineget);
        const d = JSON.parse(data.model);
        this.wflineget.header_id = data.header_id;
        this.wflineget.model = d;
        this.model1 = d;

        console.log(this.wflineget);
        
      },
      (error: any)=>{
        console.log('error occured while getting data...');
        
      }
    );

  }


  ngAfterViewInit(): void {
    setTimeout(() => {
      // delay 2 seconds waiting scripts to load

      this.ngZone.runOutsideAngular(() => {
        //$(document.getElementById('fb-editor')).formBuilder();
        var fbEditor = document.getElementById('fb-editor');
        this.formBuilder = $(fbEditor).formBuilder();
      });

    }, 2000)


  }

  saveData() {
    let data = this.formBuilder.actions.getData();
    let formData = this._formService.createFormName(data);
    this._formService.addForm(formData).subscribe(
      response => {
        console.log(response);
        this.clearData();
        this.router.navigate(['/form-list']);
      },
      error => {
        console.log(<any>error);
      });
  }
  clearData() {
    this.formBuilder.actions.clearFields();
  }
  showData() {
    this.formBuilder.actions.showData();
  }

  onDragStart(event: DragEvent) {
    console.log("drag started", JSON.stringify(event, null, 2));
  }

  onDragEnd(event: DragEvent) {
    console.log("drag ended", JSON.stringify(event, null, 2));
  }

  onDraggableCopied(event: DragEvent) {
    console.log("draggable copied", JSON.stringify(event, null, 2));
  }

  onDraggableLinked(event: DragEvent) {
    console.log("draggable linked", JSON.stringify(event, null, 2));
  }

  onDragged(item: any, list: any[], effect: DropEffect) {
    if (effect === "move") {
      const index = list.indexOf(item);
      list.splice(index, 1);
    }
  }

  onDragCanceled(event: DragEvent) {
    console.log("drag cancelled", JSON.stringify(event, null, 2));
  }

  onDragover(event: DragEvent) {
    console.log("dragover", JSON.stringify(event, null, 2));
  }

  onDrop(event: DndDropEvent, list?: any[]) {
    if (list && (event.dropEffect === "copy" || event.dropEffect === "move")) {

      if (event.dropEffect === "copy")
        event.data.name = event.data.type + '-' + new Date().getTime();
      let index = event.index;
      if (typeof index === "undefined") {
        index = list.length;
      }
      list.splice(index, 0, event.data);
    }
  }

  addValue(values) {
    values.push(this.value);
    this.value = { label: "", value: "" };
  }

  async removeField(i) {
    // swal({
    //   title: 'Are you sure?',
    //   text: "Do you want to remove this field?",
    //   type: 'warning',
    //   showCancelButton: true,
    //   confirmButtonColor: '#00B96F',
    //   cancelButtonColor: '#d33',
    //   confirmButtonText: 'Yes, remove!'
    // }).then((result) => {
    //   if (result.value) {
    //     this.model.attributes.splice(i,1);
    //   }
    // });
    const confirmed: any = await this.alertService.confirm('', 'Delete confirm?');
    if (confirmed.value) {
      this.model1.attributes.splice(i, 1);
      this.toastr.success('Deleted successfully');
      // ....
    }
  }

  updateForm() {
    let input = new FormData;
    input.append('id', this.model1._id);
    input.append('name', this.model1.name);
    input.append('description', this.model1.description);
    input.append('bannerImage', this.model1.theme.bannerImage);
    input.append('bgColor', this.model1.theme.bgColor);
    input.append('textColor', this.model1.theme.textColor);
    input.append('attributes', JSON.stringify(this.model1.attributes));

    // this.us.putDataApi('/admin/updateForm',input).subscribe(r=>{
    //   console.log(r);
    //   swal('Success','App updated successfully','success');
    // });
  }

  initReport() {
    this.report = true;
    let input = {
      id: this.model1._id
    }
    // this.us.getDataApi('/admin/allFilledForms',input).subscribe(r=>{
    //   this.reports = r.data;
    //   console.log('reports',this.reports);
    //   this.reports.map(records=>{
    //     return records.attributes.map(record=>{
    //       if(record.type=='checkbox'){
    //         record.value = record.values.filter(r=>r.selected).map(i=>i.value).join(',');
    //       }
    //     })
    //   });
    // }); 
  }

  toggleValue(item) {
    item.selected = !item.selected;
  }

  submit() {
    let valid = true;
    let validationArray = JSON.parse(JSON.stringify(this.model1.attributes));
    validationArray.reverse().forEach(field => {
      console.log(field.label + '=>' + field.required + "=>" + field.value);
      if (field.required && !field.value && field.type != 'checkbox') {
        //swal('Error','Please enter '+field.label,'error');
        valid = false;
        return false;
      }
      if (field.required && field.regex) {
        let regex = new RegExp(field.regex);
        if (regex.test(field.value) == false) {
          // swal('Error',field.errorText,'error');
          valid = false;
          return false;
        }
      }
      if (field.required && field.type == 'checkbox') {
        if (field.values.filter(r => r.selected).length == 0) {
          // swal('Error','Please enterrr '+field.label,'error');
          valid = false;
          return false;
        }

      }
    });
    if (!valid) {
      return false;
    }
    console.log('Save', this.model1);
    let input = new FormData;
    input.append('formId', this.model1._id);
    // input.append('formId', this.model.aId);
    input.append('attributes', JSON.stringify(this.model1.attributes))
    // this.us.postDataApi('/user/formFill',input).subscribe(r=>{
    //   console.log(r);
    //   swal('Success','You have contact sucessfully','success');
    //   this.success = true;
    // },error=>{
    //   swal('Error',error.message,'error');
    // });
  }

  test() {

  }
  openmodal() {
    this.modal = true;
  }

  addModal(){
    console.log('Add button clicked...');
    
    console.log(this.model1);

    this.wfline.header_id = this.id;
    this.wfline.model = JSON.stringify(this.model1);

    console.log(this.wfline);
    

    this._line.addToDB(this.wfline).subscribe(
      (data: any)=>{
        console.log('Data pushed successfully...');
        console.log(data);
        this.modal = false;
        this.ngOnInit();
      },
      (error: any)=>{
        console.log('Error in adding data...');
        
      }
    );

    
  }  
}
