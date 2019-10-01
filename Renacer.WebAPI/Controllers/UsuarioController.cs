using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using Renacer.Nucleo.Control;
using Renacer.Nucleo.Entidades;
using Renacer.Nucleo;
using Renacer.WebAPI.Filters;
using System.Web.UI.WebControls;
using System.Web.Http.Description;
using System.Web;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Configuration;

namespace Renacer.WebAPI.Controllers
{
    //[IdentityBasicAuthentication] 
    //[Authorize] 
    public class UsuarioController : ApiController
    {
        // GET: api/Usuarios
        public Usuario Get([FromUri]int tipoDni, [FromUri] string dni)
        {
            return ControlUsuario.devolverInstancia().devolverTodos(tipoDni, dni);
        }

        // GET: api/Usuarios/5
        public Usuario Get()
        {
            var usuario = ControlUsuario.devolverInstancia().devolverPorUsuario(User.Identity.Name);
            usuario.imagen = ConfigurationManager.AppSettings["url_base"] + usuario.imagen;

            return usuario;
        }

        // POST: api/cliente
        public IHttpActionResult Post([FromBody]Usuario value)
        {
            try
            {
                if (value.id == 0) value.fechaCreacion = DateTime.Now;
                ControlUsuario.devolverInstancia().grabar(value);

                value.imagen = ConfigurationManager.AppSettings["url_base"] + value.imagen;
                return Ok(value);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }
        }

        // PUT: api/cliente/5
        public void Put(int id, [FromBody]Usuario value)
        {
            var usuario = ControlUsuario.devolverInstancia().devolver(id);
            ControlUsuario.devolverInstancia().grabar(value);
        }

        // DELETE: api/ApiCliente/5
        public void Delete(int id)
        {
            var usuario = ControlUsuario.devolverInstancia().devolver(id);
            usuario.fechaBaja = DateTime.Now;
            ControlUsuario.devolverInstancia().grabar(usuario);

            //ControlUsuario.devolverInstancia().eliminar(id);
        }

        [ActionName("subirImagen")]
        [Route("api/usuario/subirImagen")]
        public IHttpActionResult SubirImagenDePerfil(ImageModel model)
        {
            var imgUrl = "Error";
            try
            {
                var usuarioActual = ControlUsuario.devolverInstancia().devolverPorUsuario(User.Identity.Name);
                usuarioActual.imagen = WriteImage(model.Bytes, $@"perfil-{usuarioActual.id}", "perfiles");
                ControlUsuario.devolverInstancia().grabar(usuarioActual);

                usuarioActual.imagen = ConfigurationManager.AppSettings["url_base"] + usuarioActual.imagen;

                return Ok(usuarioActual);
            }
            catch (UsuarioException ex)
            {
                throw new HttpResponseException(Request.CreateResponse(HttpStatusCode.BadRequest, ex.errores));
            }

        }

        private string WriteImage(byte[] arr, string name, string folder)
        {
            var filename = $@"images\{folder}\{name}.";
            using (var im = System.Drawing.Image.FromStream(new MemoryStream(arr)))
            {
                ImageFormat frmt;
                if (ImageFormat.Png.Equals(im.RawFormat))
                {
                    filename += "png";
                    frmt = ImageFormat.Png;
                }
                else
                {
                    filename += "jpg";
                    frmt = ImageFormat.Jpeg;
                }
                string path = HttpContext.Current.Server.MapPath("~/") + filename;

                im.Save(path, frmt);
            }

            return filename;
        }

    }


    public class ImageModel
    {
        public string Name { get; set; }
        public byte[] Bytes { get; set; }
    }




}



