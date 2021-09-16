import { TestBed } from '@angular/core/testing';

import { Wireframe2Service } from './wireframe2.service';

describe('Wireframe2Service', () => {
  let service: Wireframe2Service;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(Wireframe2Service);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
