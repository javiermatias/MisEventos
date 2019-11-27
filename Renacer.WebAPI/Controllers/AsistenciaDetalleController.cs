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
    public class AsistenciaDetalleController : ApiController
    {
        //id es iddetallevento
        public IEnumerable<AsistenciaDetalleEvento> Get([FromUri]int idEvento, [FromUri]int id)
        {
            //voy a tener todos los socios inscriptos
            List<Inscripcion> listaInscripciones = ControlInscripcion.devolverInstacia().devolverInscripcionEvento(idEvento);
            List<Asistencia> listaAsistencias = ControlAsistencia.devolverInstacia().devolverAsistenciaDetalleEvento(id);
            List<AsistenciaDetalleEvento> listaAux = new List<AsistenciaDetalleEvento>();

            foreach (var inscripcion in listaInscripciones)
            {
                AsistenciaDetalleEvento asistenciaDetalle = new AsistenciaDetalleEvento();
                asistenciaDetalle.socio = inscripcion.socio;
                var bandera = false;
                foreach (var asistencia in listaAsistencias)
                {
                    
                    if (inscripcion.socio.id == asistencia.idSocio) {


                        bandera = true;
                        break;

                    }

                }

                if (bandera)
                {
                    asistenciaDetalle.asistio = true;
                }
                else {
                    asistenciaDetalle.asistio = false;
                }
                listaAux.Add(asistenciaDetalle);


            }

          
            return listaAux;
        }

        public Dictionary<string, int> GetAsistenciaXSocio([FromUri]int idEvento)
        {
            List<Inscripcion> listaInscripciones = ControlInscripcion.devolverInstacia().devolverInscripcionEvento(idEvento);
            IEnumerable<DetalleEvento> detalleEvento = ControlDetalleEvento.devolverInstancia().devolverTodos(idEvento);
            Dictionary<string, int> dict = new Dictionary<string, int>();

            foreach (var item in listaInscripciones)
            {
                dict.Add(item.socio.nombre + " " + item.socio.apellido,0);
            }
           
            int contador = 0;
            foreach (var item in detalleEvento)
            {
                if (item.asistencia)
                {
                    contador++;
                    IEnumerable<AsistenciaDetalleEvento> lista = Get(idEvento, item.id);

                    foreach (var asistenciaDetalle in lista)
                    {
                     
                        if (asistenciaDetalle.asistio)
                        {
                            int valor = 0;
                            if (dict.TryGetValue(asistenciaDetalle.socio.nombre + " " + asistenciaDetalle.socio.apellido, out valor))
                            {
                                valor++;                             
                                                              
                                dict[asistenciaDetalle.socio.nombre + " " + asistenciaDetalle.socio.apellido] = valor;
                            }
                        }
                      
                    }


                }
                



            }
            //for (int i = 0; i < dict.Count; i++)

            //{

            //    dict.[i] ;

            //}

            foreach (string item in dict.Keys.ToList())
            {
                var roundedA = (Math.Round((double)((double)dict[item] / (double)contador), 1)) * 100;
                dict[item] = (int)(roundedA);
            }
           

            return dict;
        }
    }
}
