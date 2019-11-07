import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';

import { AppPicturePipe } from './appPicture/appPicture.pipe';
import { ProfilePicturePipe } from './profilePicture/profilePicture.pipe';
import { MailSearchPipe } from './search/mail-search.pipe';
import { SearchPipe,buscarMatriculaPipe,buscarSocioMatricula, buscarSocioMatriculaPagadas } from './search/search.pipe';

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
        buscarSocioMatriculaPagadas 
    ],
    exports: [
        AppPicturePipe,
        ProfilePicturePipe,
        MailSearchPipe,
        SearchPipe,
        buscarMatriculaPipe,
        buscarSocioMatricula ,       
        buscarSocioMatriculaPagadas 
    ]
})
export class PipesModule { }
