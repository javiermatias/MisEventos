using SharpRaven;
using SharpRaven.Data;
using System;
using System.Configuration;

namespace Renacer.Nucleo.Servicio
{
    public class ServicioSentry
    {
        private static ServicioSentry control;

        /// <summary>
        /// Constructor privado de la Clase.
        /// </summary>
        private ServicioSentry() { }

        /// <summary>
        /// Metodo para devolver una instancia unica de la Clase.
        /// </summary>
        /// <returns></returns>
        public static ServicioSentry devolverSentry()
        {
            if (control == null)
                control = new ServicioSentry();
            return control;
        }

        /// <summary>
        /// Metodo para informar las Excepciones que se producen en el Sistema.
        /// </summary>
        /// <param name="ex"></param>
        public void informarExcepcion(Exception ex) {
            try
            {
                if (ex != null)
                {
                    //
                   // var ravenClient = new RavenClient(ConfigurationManager.AppSettings.Get("dns_sentry_nucleo"));
                    var ravenClient = new RavenClient("https://144c43d6c37446d88ee7812df11ef629:cd0a8c27a70b4169aa7eecdd06672928@sentry.io/243593");
                    ravenClient.Capture(new SentryEvent(ex));
                }
            }
            catch (Exception e) { }
        }

        /// <summary>
        /// Metodo para informar las Excepciones que se producen en el Sistema.
        /// </summary>
        /// <param name="ex"></param>
        public void informarExcepcionUsuario(Exception ex)
        {
            try
            {
                if (ex != null)
                {
                    var ravenClient = new RavenClient(ConfigurationManager.AppSettings.Get("dns_sentry_nucleo"));
                    var evento = new SentryEvent(ex);
                    evento.Level = ErrorLevel.Warning;
                    ravenClient.Capture(evento);
                }
            }
            catch (Exception e) { }
        }
    }
}
