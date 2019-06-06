import { Matricula } from "./matricula";
import { Socio } from "../resources/socio.service";

export class MatriculaXsocio {
   
    id: number;
    idSocio: number;
    socio:Socio;
    idMatricula: number;
    matricula:Matricula;
    fechaPago: Date;
    pago: boolean;



/*     [Key]
    public int id { get; set; }

    public int idSocio { get; set; }
    [ForeignKey("idSocio")]
    public  Socio socio { get; set; }

    public int idMatricula { get; set; }
    [ForeignKey("idMatricula")]
    public Matricula matricula { get; set; }

    public DateTime fechaPago { get; set; }

    public bool pago { get; set; } */
}
