import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { IngresosMonetariosComponent } from './ingresos-monetarios.component';

describe('IngresosMonetariosComponent', () => {
  let component: IngresosMonetariosComponent;
  let fixture: ComponentFixture<IngresosMonetariosComponent>;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ IngresosMonetariosComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    fixture = TestBed.createComponent(IngresosMonetariosComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
