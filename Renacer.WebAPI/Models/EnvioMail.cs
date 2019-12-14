using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
namespace Renacer.WebAPI.Models
{
    public static class  EnvioMail
    {
 
        public static Boolean enviarMail(string address, string user, string clave) {

            string _htmlBody = devolverMensaje(user, clave);
            return _enviarEmail(address,_htmlBody, "Bienvenidos a la Fundación Foro de los Sabios"); 
        }

        public static bool _enviarEmail(string address, string _htmlBody,string subject)
        {
            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("forodelosabios@gmail.com");
                mail.To.Add(address);
                mail.Subject = subject ;
                mail.IsBodyHtml = true;
                //Mensaje En Html          
                //
                mail.Body = _htmlBody;

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("forodelosabios", "foro12345678");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public static string devolverMensaje(string user, string clave)
        {
            return @"<h3>Fundación Foro de los Sabios</h3>

   <p> Gracias por ser parte de esta hermosa fundación, contamos un sistema integral para que puedas 
      organizarte con este sistema online que poseemos. Vas a poder realizar:

<ul>
  <li> Ver tu agenda, con esto sabras cuales son tus horarios para una semana determinada. </li>
  

       <li> Vas a poder ver los próximos cursos a dictarse, e inscribirte online.</li>
    

            <li> Vas a poder ver tus asistencias y completar encuestas de satisfacción</li>
      

                 <li> Vas a poder pagar los cursos online y mucho más!.</li>
        


                    </ul>
        


                    </p>
        

               <h3>Como ingreso? </h3>
        
                    <p>
                            Deberas ingresar a www.forodelossabios.com, y colocar alli tus credenciales. <br>
                            Usuario:" + user + @" <br>
                            Contraseña:" + clave + @" <br>
                     </p>
                                             
 <h3>Nuestros datos de contacto: </h3>
        

                                                 <ul>
                    

                                            


                                       <li> Página Oficial: <a href = ""http://www.smart-soft.com.ar""> Click Aquí </a></li>


                                               <li> Facebook: <a href = ""https://www.facebook.com/SmartSoftArg/"" > Click Aquí </a></li>


                                            
                                                             </ul>



                                                              </p>



                                                              <p>También te puedes comunicar al mail: <strong>
forodelosabios@gmail.com</strong> por cualquier duda o consulta.</p>";
        }





        public static string devolverMensajeRecuperoContrasenia(string user, string clave)
        {
            return @"<h3>Fundación Foro de los Sabios</h3>

   <p> Gracias por ser parte de esta hermosa fundación, contamos un sistema integral para que puedas 
      organizarte con este sistema online que poseemos.
   </p>
<h3>Datos de ingreso: </h3>
    <p>
        Deberas ingresar a www.forodelossabios.com, y colocar alli tus credenciales. <br>
        Usuario:" + user + @" <br>
        Contraseña:" + clave + @" <br>
   </p>
                                             
  <p>Te puedes comunicar al mail: <strong>
forodelosabios@gmail.com</strong> por cualquier duda o consulta.</p>";
        }
    }
}