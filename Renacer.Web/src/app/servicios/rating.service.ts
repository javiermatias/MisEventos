import { Injectable } from '@angular/core';
import { BaseServices } from './base.service';
import { Variables } from './variables';
import { HttpClient } from "@angular/common/http";
import { Rating } from '../modelos/ratingEvento';

let variable = new Variables();

@Injectable()
export class RatingServices extends BaseServices<Rating> {
    public url:string = `${new Variables().urlBase}RatingEvento`;
    constructor(public http:HttpClient){
        super(http);
         }
}