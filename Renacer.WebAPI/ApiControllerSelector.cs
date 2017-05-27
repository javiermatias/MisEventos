using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Web;
using System.Web.Http;
using System.Web.Http.Dispatcher;
using System.Web.Http.Routing;

namespace Renacer.WebAPI
{
    public class ApiControllerSelector : DefaultHttpControllerSelector
    {
        public ApiControllerSelector(HttpConfiguration configuration)
            : base(configuration)
        {
        }

        public override string GetControllerName(HttpRequestMessage request)
        {
            if (request == null)
                throw new ArgumentNullException("request");

            IHttpRouteData routeData = request.GetRouteData();

            if (routeData == null)
                return null;

            // Look up controller in route data

            object controllerName;
            routeData.Values.TryGetValue("controller", out controllerName);

            if (controllerName != null)
                return $"Api{controllerName.ToString()}";

            return (string)controllerName;
        }
    }
}