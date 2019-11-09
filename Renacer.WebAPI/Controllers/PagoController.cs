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
    public class PagoController : ApiController
    {
        // GET: api/cliente
        public IEnumerable<Pago> Get()
        {
            return ControlPagoCuota.devolverInstacia().devolverTodos();
        }

        // GET: api/cliente/5
        public Pago Get(int id)
        {
            return ControlPagoCuota.devolverInstacia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Pago _pago)
        {
            try
            {
                Pago pago = ControlPagoCuota.devolverInstacia().devolverUltimo();
                _pago.fechaCobro = DateTime.Now;
                _pago.nroRecibo = pago.id + 10000;
               // _pago.idInscripcion
                ControlPagoCuota.devolverInstacia().grabar(_pago);
                Inscripcion inscripto = ControlInscripcion.devolverInstacia().devolver(_pago.idInscripcion);

                //Metodo para determinar si ha pagado todas las cuotas
                Boolean banderaPagados = true;
                foreach (var itempago in inscripto.listaPagos)
                {
                    if (!itempago.estaPagado)
                    {
                        banderaPagados = false;
                        break;
                    }
                }

                if (banderaPagados) {
                    inscripto.estado = "PAGADO";
                    ControlInscripcion.devolverInstacia().update(inscripto);

                    //si ya ha pagado el user voy a ver si todos los users pagaron y pongo el estado del evento PAGADO
                    List<Inscripcion> listaInscriptos = ControlInscripcion.devolverInstacia().devolverInscripcionEvento(inscripto.idEvento);
                    Boolean banderaEventosPagados = true;
                    foreach (Inscripcion _inscripto in listaInscriptos)
                    {
                        if (_inscripto.estado == "ADEUDADO") {
                            banderaEventosPagados = false;
                            break;
                        }
                    
                    }

                    if (banderaEventosPagados)
                    {
                        Evento evento = ControlEvento.devolverInstancia().devolver(inscripto.idEvento);
                        evento.estadoDeudores = "PAGO";
                        ControlEvento.devolverInstancia().actualizar(evento);

                    }
                }

               


                return Ok(_pago);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Pago _pago)
        {
 
            _pago.fechaCobro = DateTime.Now;
            ControlPagoCuota.devolverInstacia().grabar(_pago);
            
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            ControlPagoCuota.devolverInstacia().eliminar(id);
        }
    }
}
