using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Renacer.WebAPI.Controllers
{
    public class DeudasCuotasController : ApiController
    {

        //public IEnumerable<Evento> Get([FromUri]int idEvento)
        //{

        //    if (search == null) search = "";

        //    return ControlEvento.devolverInstancia().devolverTodos(search);
        //}


        public List<DeudaCuota> Get([FromUri]int idEvento) {

            Evento evento = ControlEvento.devolverInstancia().devolver(idEvento);
            List<DeudaCuota> listaDeudores = new List<DeudaCuota>();

            //Genero el nombre de la cuota con los deudores
            foreach (var _cuota in evento.listaCuotas)
            {
                DeudaCuota cuota = new DeudaCuota();
                cuota.nombreCuota = _cuota.nombre;
                cuota.idCuota = _cuota.id;
                cuota.listaSocios = new List<Socio>();
                listaDeudores.Add(cuota);
            }
            foreach (var inscripcion in evento.listaInscripciones)
            {
                Inscripcion _inscripcion = ControlInscripcion.devolverInstacia().devolver(inscripcion.id);

                if (_inscripcion!=null) {

                    foreach (var pago in _inscripcion.listaPagos)
                    {
                        if (!pago.estaPagado)
                        {
                            foreach (var deuda in listaDeudores)
                            {
                                if (pago.idCuota == deuda.idCuota)
                                {
                                    deuda.listaSocios.Add(_inscripcion.socio);
                                    break;
                                }

                            }
                        }


                    }
                }
              

            }

            return listaDeudores;

    }
   }
}
