import { TestBed } from '@angular/core/testing';

import { Gitfolder1Service } from './gitfolder1.service';

describe('Gitfolder1Service', () => {
  let service: Gitfolder1Service;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(Gitfolder1Service);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
