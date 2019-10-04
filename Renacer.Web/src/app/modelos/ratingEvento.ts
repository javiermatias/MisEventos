import { Evento } from "../servicios/evento.service";
import { Socio } from "../servicios/socio.service";

export class Rating {
    id: number;
    ratingEvento: number;
    ratingContenido: number;
    ratingEncargado: number;
    idEvento: number;
    evento:Evento;   

    idSocio: number; 
    socio:Socio;
    textoDescripcion: string;

}