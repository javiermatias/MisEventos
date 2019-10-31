import { Injectable } from '@angular/core';
import { RequestMethod } from '@angular/http';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { Matricula } from '../modelos/matricula';
import { HttpClient } from '@angular/common/http';

declare const require: any;
const jsPDF = require('jspdf');
require('jspdf-autotable');

export class CreadorDePDFServices {
    constructor(p) { }

    Imprimir(title: string, nombreArchivo: string ) {
    const doc = new jsPDF();
    const img = new Image();
    img.src = '../../assets/img/logo/az_logo.png'

    doc.save( nombreArchivo + '.pdf');
    }
}

