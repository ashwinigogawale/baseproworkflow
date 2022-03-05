import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SchedulerinfoComponent } from './schedulerinfo.component';

describe('SchedulerinfoComponent', () => {
  let component: SchedulerinfoComponent;
  let fixture: ComponentFixture<SchedulerinfoComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SchedulerinfoComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SchedulerinfoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
