﻿using Renacer.Nucleo;
using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;
using Renacer.WebAPI.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Renacer.WebAPI.Controllers
{
    public class SocioController : ApiController
    {
        // GET: api/Socios
        public IEnumerable<Socio> Get([FromUri] string search="")
        {
            //if (page <= 0) page = 1;
            //if (limit <= 0) limit = 10;
            if (search == null) {
                search = "";
            }

            return ControlSocio.devolverInstancia().devolverTodos(search);
        }

        //[Route("api/socio/sinMatricula")]
        [HttpGet]
        public IEnumerable<Socio> GetMatriculas([FromUri] string estado)
        {
            //if (page <= 0) page = 1;
            //if (limit <= 0) limit = 10;

            return ControlSocio.devolverInstancia().devolverTodosDebeMatricula(/*page,limit,search*/);
        }

        // GET: api/Socios/5
        public Socio Get(int id)
        {
            return ControlSocio.devolverInstancia().devolver(id);
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Socio value)
        {
            try
            {
                if (value.id == 0) {
                    value.fechaCreacion = DateTime.Now;
                    Socio socio = ControlSocio.devolverInstancia().grabar(value);
                    Usuario usuario = new Usuario();
                    Random random = new Random();
                    int rnd = random.Next(100, 1000);
                    usuario.nombre = socio.nombre;
                    usuario.usuario = socio.apellido + rnd.ToString();
                    usuario.clave = socio.nombre + socio.nroDocumento;
                    if (socio.sexo== "Masculino")
                    {
                        usuario.imagen = "images\\perfiles\\adam.jpg";
                    }
                    else{
                        usuario.imagen = "images\\perfiles\\julia.jpg";
                    }
                    
                    usuario.rol = "SOCIO";
                    usuario.email = socio.email;
                    usuario.fechaCreacion = DateTime.Now;
                    usuario.idSocio = socio.id;
                    ControlUsuario.devolverInstancia().grabar(usuario);
                    EnvioMail.enviarMail(usuario.email, usuario.usuario,usuario.clave);

                }

                else {
                    ControlSocio.devolverInstancia().grabar(value);
                }
              
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        [Route("api/socio/{idSocio}/matricula")]
        [HttpPost]
        public IHttpActionResult PostPagaMatricula([FromUri]int idSocio,[FromBody] Matricula matricula)
        {
            try
            {
                var socio = ControlSocio.devolverInstancia().devolver(idSocio);
                if (socio == null) return NotFound();

                ControlSocio.devolverInstancia().actualizarSocioPagoMatricula(socio);
                return Ok(socio);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }
        // PUT: api/cliente/5
        public void Put([FromBody]Socio value)
        {
            //var socio = ControlSocio.devolverInstancia().devolver(id);
            //value.fechaModificacion = DateTime.Now;
            ControlSocio.devolverInstancia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            var socio = ControlSocio.devolverInstancia().devolver(id);
            socio.fechaBaja = DateTime.Now;
            ControlSocio.devolverInstancia().grabar(socio);

            //ControlSocio.devolverInstancia().eliminar(id);
        }

    }
}
