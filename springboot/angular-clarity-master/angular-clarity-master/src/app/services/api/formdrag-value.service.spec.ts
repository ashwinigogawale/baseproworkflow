import { TestBed } from '@angular/core/testing';

import { FormdragValueService } from './formdrag-value.service';

describe('FormdragValueService', () => {
  let service: FormdragValueService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(FormdragValueService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
