import { ComponentFixture, TestBed } from '@angular/core/testing';

import { FormdragComponent } from './formdrag.component';

describe('FormdragComponent', () => {
  let component: FormdragComponent;
  let fixture: ComponentFixture<FormdragComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ FormdragComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(FormdragComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
