import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelectEncargadoComponent } from './select-encargado.component';

describe('SelectEncargadoComponent', () => {
  let component: SelectEncargadoComponent;
  let fixture: ComponentFixture<SelectEncargadoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectEncargadoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelectEncargadoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
