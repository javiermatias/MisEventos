import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { FilterSocioComponent } from './filter-socio.component';

describe('FilterSocioComponent', () => {
  let component: FilterSocioComponent;
  let fixture: ComponentFixture<FilterSocioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ FilterSocioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(FilterSocioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
