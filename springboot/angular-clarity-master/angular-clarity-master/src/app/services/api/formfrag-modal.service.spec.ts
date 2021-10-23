import { TestBed } from '@angular/core/testing';

import { FormfragModalService } from './formfrag-modal.service';

describe('FormfragModalService', () => {
  let service: FormfragModalService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(FormfragModalService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
