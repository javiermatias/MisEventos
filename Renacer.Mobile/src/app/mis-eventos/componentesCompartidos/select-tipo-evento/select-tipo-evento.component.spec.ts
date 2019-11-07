import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { SelectTipoEventoComponent } from './select-tipo-evento.component';

describe('SelectTipoEventoComponent', () => {
  let component: SelectTipoEventoComponent;
  let fixture: ComponentFixture<SelectTipoEventoComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ SelectTipoEventoComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(SelectTipoEventoComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should be created', () => {
    expect(component).toBeTruthy();
  });
});
