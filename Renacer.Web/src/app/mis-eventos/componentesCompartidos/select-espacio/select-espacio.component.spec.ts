import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelectEspacioComponent } from './select-espacio.component';

describe('SelectEspacioComponent', () => {
  let component: SelectEspacioComponent;
  let fixture: ComponentFixture<SelectEspacioComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectEspacioComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelectEspacioComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
