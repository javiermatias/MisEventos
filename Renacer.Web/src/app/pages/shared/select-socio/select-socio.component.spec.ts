import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelectSocioComponent } from './select-socio.component';

describe('SelectSocioComponent', () => {
  let component: SelectSocioComponent;
  let fixture: ComponentFixture<SelectSocioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectSocioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelectSocioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
