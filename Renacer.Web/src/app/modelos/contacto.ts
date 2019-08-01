export class ContactoModel {
    constructor(
        public id?: number,
        public nombre?: string,
        public apellido?: string,
        public telefono?: string,
        public email?: string,
        public relacion?: string,
        public celular?: string) {
        this.id = 0;
        this.nombre = "";
        this.apellido = "";
        this.telefono = "";
        this.email = "";
        this.relacion = "";
        this.celular = "";
    }
}