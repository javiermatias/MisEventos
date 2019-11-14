import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AppPicturePipe } from './appPicture/appPicture.pipe';
import { ProfilePicturePipe } from './profilePicture/profilePicture.pipe';
import { MailSearchPipe } from './search/mail-search.pipe';
import { SearchPipe,buscarMatriculaPipe,buscarSocioMatricula, buscarSocioMatriculaPagadas, buscarEventoMisPagos } from './search/search.pipe';

@NgModule({
    imports: [ 
        CommonModule 
    ],
    declarations: [
        AppPicturePipe, 
        ProfilePicturePipe,
        MailSearchPipe,
        SearchPipe,
        buscarMatriculaPipe,
        buscarSocioMatricula,
        buscarSocioMatriculaPagadas,
        buscarEventoMisPagos
    ],
    exports: [
        AppPicturePipe,
        ProfilePicturePipe,
        MailSearchPipe,
        SearchPipe,
        buscarMatriculaPipe,
        buscarSocioMatricula ,       
        buscarSocioMatriculaPagadas,
        buscarEventoMisPagos
    ]
})
export class PipesModule { }
