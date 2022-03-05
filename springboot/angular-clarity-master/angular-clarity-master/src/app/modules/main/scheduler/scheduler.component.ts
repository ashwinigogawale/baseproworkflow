import { Component, OnInit } from '@angular/core';
import { SchedulerService } from 'src/app/services/api/scheduler.service';

@Component({
  selector: 'app-scheduler',
  templateUrl: './scheduler.component.html',
  styleUrls: ['./scheduler.component.scss']
})
export class SchedulerComponent implements OnInit {
  alldata;
  loading = false;
  constructor(private mainservice:SchedulerService) { }

  ngOnInit(): void {
    this.mainservice.getAllpipe().subscribe((data) => {
      console.log(data);
      this.alldata = data;
    });
  }

}
