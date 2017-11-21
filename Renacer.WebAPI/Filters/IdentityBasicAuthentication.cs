using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Threading;
using System.Threading.Tasks;
using System.Security.Principal;
using System.Web.Http.Filters;
using System.Net.Http;
using System.Net.Http.Headers;
using Renacer.Nucleo;
using Renacer.Nucleo.Control;

namespace Renacer.WebAPI.Filters
{
    public class IdentityBasicAuthenticationAttribute : CustomAuthenticationFilter
    {
        private IPrincipal AuthenticateUser(string token)
        {
            return ControlUsuario.devolverInstancia().devolverPorToken(token);
        }

        protected override async Task<IPrincipal> AuthenticateAsync(string token, CancellationToken cancellationToken)
        {
            return await Task.Run(() => AuthenticateUser(token));
        }
    }
}