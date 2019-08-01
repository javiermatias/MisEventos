import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelectEventoComponent } from './select-evento.component';

describe('SelectEventoComponent', () => {
  let component: SelectEventoComponent;
  let fixture: ComponentFixture<SelectEventoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectEventoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelectEventoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
