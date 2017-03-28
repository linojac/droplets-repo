import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CreateDropletComponent } from './create-droplet.component';

describe('CreateDropletComponent', () => {
  let component: CreateDropletComponent;
  let fixture: ComponentFixture<CreateDropletComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CreateDropletComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(CreateDropletComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
