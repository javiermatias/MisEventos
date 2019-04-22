import { Injectable } from '@angular/core';
import { Resource, ResourceParams, ResourceAction } from 'ngx-resource';
import { ResourceMethod } from 'ngx-resource/src/Interfaces';
import { RequestMethod } from '@angular/http';
import { Variables } from './variables';
import { BaseServices } from './base.service';
import { TipoDocumento } from './tipo-documento.service';



class Persona {
  constructor(
    public id: number,
    public nombre?: string,
    public apellido?: string,
    public nroDocumento?: string,
    public rol?: string,
    public email?: string,
    public fechaCreacion?: Date,
    public fechaBaja?: Date
    //    public telefono: null,
    //         public celular?: number, null,
    /*   id int(11) AI PK
    nombre longtext
    apellido longtext
    telefono longtext
    celular longtext
    email longtext
    sexo longtext
    estadoCivil longtext
    idTipoDoc int(11)
    nroDocumento longtext
    idDomicilio int(11)
    idContacto int(11)
    fechaCreacion datetime
    fechaNacimiento datetime
    fechaBaja datetime
    fechaModificacion datetime
    rol longtext */
    //         public listaInscripciones?: number, null,
    //         public listaAsistencias?: number, null,
    //         public listaTags?: number, [],
    //         public rol?: number, null
  ) { }
}


@Injectable()
@ResourceParams({
  url: new Variables().urlBase + 'persona/'
})

export class PersonaServices extends BaseServices<Persona> {
}