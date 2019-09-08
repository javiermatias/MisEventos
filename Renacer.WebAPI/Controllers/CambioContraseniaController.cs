using Renacer.Nucleo;
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
    public class CambioContraseniaController : ApiController
    {
        public IHttpActionResult Post([FromBody]CambioContrasenia contrasenia)
        {
            try
            {
                Usuario user = ControlUsuario.devolverInstancia().devolver(contrasenia.usuario, contrasenia.contraseniaActual);

                if (user == null)
                {
                    return BadRequest();
                }
                else {

                    user.clave = contrasenia.nuevaContrasenia;
                    ControlUsuario.devolverInstancia().grabar(user);

                     return Ok(user);
                }

            }
            catch (Exception ex)
            {
                return BadRequest();
            }
        }


    }
}
