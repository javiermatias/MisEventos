export class Recordatorio {
    id: number;
    fechaRecordatorio: Date;
    titulo: string;
    descripcion: string;

    constructor(){
        this.fechaRecordatorio = new Date();
        this.titulo="";
        this.descripcion="";
    }

 /*    public int id { get; set; }
    public DateTime fechaRecordatorio{ get; set; }

    public string titulo { get; set; }
    public string descripcion { get; set; } */
}
