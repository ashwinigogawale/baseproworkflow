import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup } from '@angular/forms';
import { SchedulerService } from 'src/app/services/api/scheduler.service';

@Component({
  selector: 'app-schedulerinfo',
  templateUrl: './schedulerinfo.component.html',
  styleUrls: ['./schedulerinfo.component.scss']
})
export class SchedulerinfoComponent implements OnInit {
  modalAdd= false;
  public entryForm: FormGroup;
  alldata;
  loading = false;
  constructor(private mainservice:SchedulerService,
    private _fb: FormBuilder) { }

  ngOnInit(): void {
    this.mainservice.getAllinfo().subscribe((data) => {
      console.log(data);
      this.alldata = data;
    });
    this.entryForm = this._fb.group({
    counter: [null],
    gapDuration: [null],
    startTime: [null],
    jobName:[null],
    jobGroup: [null]
      });
  }
  goToAdd() {
    this.modalAdd=true;
    }
    onSubmit(){
      this.modalAdd=false;
      console.log(this.entryForm.value);
      this.mainservice.create(this.entryForm.value).subscribe(data => {
        console.log(data)
        this.ngOnInit();
      },
        (error) => {
          console.log(error);
        }
      );
    }

}
