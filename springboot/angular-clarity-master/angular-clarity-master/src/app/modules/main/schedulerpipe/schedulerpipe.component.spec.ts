import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SchedulerpipeComponent } from './schedulerpipe.component';

describe('SchedulerpipeComponent', () => {
  let component: SchedulerpipeComponent;
  let fixture: ComponentFixture<SchedulerpipeComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SchedulerpipeComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(SchedulerpipeComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
