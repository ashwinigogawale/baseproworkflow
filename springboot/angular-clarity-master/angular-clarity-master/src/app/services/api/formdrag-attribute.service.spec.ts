import { TestBed } from '@angular/core/testing';

import { FormdragAttributeService } from './formdrag-attribute.service';

describe('FormdragAttributeService', () => {
  let service: FormdragAttributeService;

  beforeEach(() => {
    TestBed.configureTestingModule({});
    service = TestBed.inject(FormdragAttributeService);
  });

  it('should be created', () => {
    expect(service).toBeTruthy();
  });
});
