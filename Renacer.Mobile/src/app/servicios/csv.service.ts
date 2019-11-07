import { Injectable } from '@angular/core';
import { BehaviorSubject } from 'rxjs';


@Injectable()
export class CsvServices {

    public request: BehaviorSubject<RequestCsv> = new BehaviorSubject(undefined);

    constructor() {}

}

export class RequestCsv {

    data: any[];
    columnas: string[];
    title: string;

    constructor(col: string[], data: any[], title: string) {
        this.data = data;
        this.columnas = col;
        this.title = title;
    }

}

