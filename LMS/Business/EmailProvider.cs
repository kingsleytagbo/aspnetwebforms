using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net.Mail;
using System.Net.Mime;
using System.Configuration;

namespace LMS.Business
{
    public class EmailProvider
    {
        public void Send(string to, string firstname, string lastname)
        {
            try
            {
                string smtpUsername = ConfigurationManager.AppSettings["smtp_username"].ToString();
                string smtpPassword = ConfigurationManager.AppSettings["smtp_password"].ToString();
                string smtpServer = ConfigurationManager.AppSettings["smtp_server"].ToString();
                int smtpPort = Convert.ToInt16(ConfigurationManager.AppSettings["smtp_port"]);
                Boolean smtpSSL = Convert.ToBoolean(ConfigurationManager.AppSettings["smtp_ssl"]);

                string from = smtpUsername; 

                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add(new MailAddress(to, to, System.Text.Encoding.UTF8));
                mail.From = new MailAddress(from, from, System.Text.Encoding.UTF8);
                mail.Subject = "CONFIRMATION - Speaker Training Meeting";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;

                string body = this.GetBody().Replace("[FIRSTNAME]", firstname).Replace("[LASTNAME]", lastname);
                if (string.IsNullOrEmpty(body))
                {
                    body = "Dear <br /><br />" + "On behalf of Pharma Company Inc. thank you for registering for the Speaker Training Meeting. <br /><br />" +
                     "You will receive a formal confirmation email within the next 3-5 business days, including information for <br /><br />" +
                     "booking your travel. <br /><br />  Reagsrds.";
                    mail.Body = body;
                }
                else
                {
                    var logoResource = this.GetLogoResource();
                    AlternateView logoView = AlternateView.CreateAlternateViewFromString(body, null, MediaTypeNames.Text.Html);
                    logoView.LinkedResources.Add(logoResource);
                    mail.AlternateViews.Add(logoView);
                }
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.High;

                SmtpClient client = new SmtpClient();

                //Add the Creddentials- use your own email id and password
                client.Credentials = new System.Net.NetworkCredential(from, smtpPassword);

                client.Port = smtpPort; //587 - Gmail works on this port
                client.Host = smtpServer;  // "smtp.gmail.com" - Gmail;
                client.EnableSsl = smtpSSL; //true; - Gmail works on Server Secured Layer
                try
                {
                    client.Send(mail);
                }
                catch (Exception ex)
                {
                    Exception ex2 = ex;
                    string errorMessage = string.Empty;

                    while (ex2 != null)
                    {
                        errorMessage += ex2.ToString();
                        ex2 = ex2.InnerException;
                    }
                    Console.Write(errorMessage);
                }
            }
            catch(Exception ex)
            {
                Console.Write(ex.ToString());
            }
        }

        private LinkedResource GetLogoResource()
        {
            LinkedResource logo = null;

            try
            {
                string filePath = string.Concat(AppDomain.CurrentDomain.BaseDirectory, "\\Content\\Images\\Logo.png");
                logo = new LinkedResource(filePath);
                logo.ContentId = "logo";
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return logo;
        }

        private string GetBody()
        {
            string body = string.Empty;

            try
            {
                string filePath = string.Concat(AppDomain.CurrentDomain.BaseDirectory,  "\\Content\\EmailTemplates\\Register_ThankYou.html");
                System.IO.StreamReader reader = new System.IO.StreamReader(filePath);
                body = reader.ReadToEnd();
                reader.Close();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return body;
        }
    }
}