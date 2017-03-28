import { TestBed, inject } from '@angular/core/testing';

import { DropletsService } from './droplets.service';

describe('DropletsService', () => {
  beforeEach(() => {
    TestBed.configureTestingModule({
      providers: [DropletsService]
    });
  });

  it('should ...', inject([DropletsService], (service: DropletsService) => {
    expect(service).toBeTruthy();
  }));
});
