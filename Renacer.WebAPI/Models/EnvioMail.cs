using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
namespace Renacer.WebAPI.Models
{
    public static class  EnvioMail
    {


        public static Boolean enviarMail(string address) {
            try
            {
                string htmlBody;
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("fundacionrenacereventos@gmail.com");
                mail.To.Add(address);
                mail.Subject = "Bienvenidos a la Fundación Renacer";
                mail.IsBodyHtml = true;
                //Mensaje En Html          
                htmlBody = "Write some HTML code here";
                //
                mail.Body = htmlBody;

                SmtpServer.Port = 587;
                SmtpServer.Credentials = new System.Net.NetworkCredential("fundacionrenacereventos", "fundacion123");
                SmtpServer.EnableSsl = true;

                SmtpServer.Send(mail);
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
    }
}