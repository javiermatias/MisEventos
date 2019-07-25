import {Component, ViewEncapsulation, OnInit} from '@angular/core';

import {MessagesService} from './messages.service';
import { RecordatorioServices, RecordatorioHoyServices, ActualizarEventoServices } from '../../../resources/recordatorio.service';
import { Recordatorio } from '../../../models/recordatorio';

@Component({
    selector: 'az-messages',
    encapsulation: ViewEncapsulation.None,
    styleUrls: ['./messages.component.scss'],
    templateUrl: './messages.component.html',
    providers: [MessagesService]
})

export class MessagesComponent implements OnInit{
      
    public messages:Array<Object>;
    public notifications:Array<Object>;
    public tasks:Array<Object>;
    recordatorios: Recordatorio[];
    constructor (private _messagesService:MessagesService , private _recordatorioService: RecordatorioHoyServices,
        private _actualizarEvento:ActualizarEventoServices){
        this.messages = _messagesService.getMessages();
       // this.notifications = _messagesService.getNotifications();
       
        this.tasks = _messagesService.getTasks();
    }
    ngOnInit(): void {
        this.getItems();
        this.actualizarEventos();
    } 

    getItems(){
   
        this._recordatorioService.query({}, (items: Recordatorio[]) => {
         //console.log(items);
          this.recordatorios = items;
          //console.log(this.recordatorios); 
         
          
        });
      }

      actualizarEventos(){
   
        this._actualizarEvento.query({}, (items: any[]) => {
         //console.log('hola desde actualziar'+items);
         // this.recordatorios = items;
         // console.log(this.recordatorios); 
         
          
        });
      }
      //ActualizarEvento




}