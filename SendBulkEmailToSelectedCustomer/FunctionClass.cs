using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net.Mail;
using System.Net;

namespace SendBulkEmailToSelectedCustomer
{
    class FunctionClass
    {
        string message = string.Empty;
        public String sendEmail(string email,string html, string subject)
        {
            try
            {
               
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.UseDefaultCredentials = false;
                smtp.Credentials = new System.Net.NetworkCredential("EMAILID", "PASSWORD");
                smtp.EnableSsl = true;
                MailMessage msg = new MailMessage();
                msg.Subject = subject;
                msg.Body = html + "\n\n\nThanks & Regards.\nBilly Team";
                msg.IsBodyHtml = true;
                string toaddress = email;
                msg.To.Add(toaddress);
                string fromaddress = "Billy Admin <EMAILID>";
                msg.From = new MailAddress(fromaddress);
                try
                {
                    smtp.Send(msg);

                }
                catch (Exception ex)
                {
                    throw;
                }
            }
            catch
            {
                message = "The specified string is not in the form required for an e-mail address";
            }
            message = "email sent to " + email;
            
            return message;
        }
    }
    
}