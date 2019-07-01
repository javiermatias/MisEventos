import { ValidatorFn, AbstractControl, FormGroup} from "@angular/forms";
import * as moment from 'moment'; 

export class ValidationService {

    static emailValidator(control): {[key: string]: any} {
        var emailRegexp = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;    
        if (control.value && !emailRegexp.test(control.value)) {
            return {invalidEmail: true};
        }
    }

    static matchingPasswords(passwordKey: string, passwordConfirmationKey: string) {
        return (group) => {
            let password= group.controls[passwordKey];
            let passwordConfirmation= group.controls[passwordConfirmationKey];
            if (password.value !== passwordConfirmation.value) {
                return passwordConfirmation.setErrors({mismatchedPasswords: true})
            }
        }
    }

    static numberValidator(control): {[key: string]: any} {
        var onlyNumberRegexp = /.*[^0-9].*/;  
        if (control.value && onlyNumberRegexp.test(control.value)) {
            return {invalidNumber: true};
        }
    }

     static rangosValidador(cupoMin: string, cupoMax: string) {
        return (group) => {
           // console.log('pasa por el validador?');
            let cupoMinimo= group.controls[cupoMin].value;
            let cupoMaximo= group.controls[cupoMax].value;
            let cupMax = group.controls[cupoMax];
            if(cupoMaximo == 0){
                return cupMax.setErrors({rango: true})
            }
            if (cupoMaximo){                   
            
                if (cupoMinimo + 1 > cupoMaximo ) {
             //   console.log("esta mal");
                return cupMax.setErrors({rango: true})
            }
        }
       }
    }

    static fechasValidador(_fechaDesde: string, _fechaHasta: string) {
        return (group) => {
           // console.log('pasa por el validador?');
            let fechadesde= group.controls[_fechaDesde].value;
            let fechahasta= group.controls[_fechaHasta].value;
            let fecha = group.controls[_fechaHasta];         
            if (fechahasta){                   
            
                if (fechadesde > fechahasta) {
             //   console.log("esta mal");
                return fecha.setErrors({fechaError: true})
            }
        }
       }
    }
     

/*     static rangosValidador(): ValidatorFn {
        return (control: FormGroup): { [key: string]: boolean } | null => {
            const cupoMinimo = control.get('cupoMin').value;
            const cupoMaximo= control.get('cupoMax').value;
            if (cupoMaximo < cupoMinimo) {
              console.log("valide por true");
                return { 'rango': true };
            }
            console.log("valide por false");
            return null;
        };
    } */

   
    static minValidador(min: number): ValidatorFn {
        return (control: AbstractControl): { [key: string]: boolean } | null => {
            if (control.value !== undefined && (isNaN(control.value) || control.value < min )) {
              //  console.log("valide por true");
                return { 'min': true };
            }
            //console.log("valide por false");
            return null;
        };
    }

    static fechaMenorHoyValidador(fecha: Date): ValidatorFn {
        return (control: AbstractControl): { [key: string]: boolean } | null => {
            if (control.value !== undefined && (isNaN(control.value) || control.value <moment().format("MMM Do YY"))) {
              //  console.log("valide por true");
                return { 'min': true };
            }
            //console.log("valide por false");
            return null;
        };
    }

    static maxValidador(max: number): ValidatorFn {
        return (control: AbstractControl): { [key: string]: boolean } | null => {
            if (control.value !== undefined && (isNaN(control.value) || control.value > max)) {
              //  console.log("valide por true");
                return { 'max': true };
            }
            //console.log("valide por false");
            return null;
        };
    }


    /* static max(control): {[key: string]: any} {
        //var emailRegexp = /[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$/;    
        if (control.value && !emailRegexp.test(control.value)) {
            return {max: true};
        }
    } */

    


}