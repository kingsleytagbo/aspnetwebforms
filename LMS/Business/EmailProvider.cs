using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

using System.Net.Mail;

namespace LMS.Business
{
    public class EmailProvider
    {
        public void Send(string to)
        {
            try
            {
                string from = "code@full-stack.guru"; //Replace this with your own correct Gmail Address

                //string to = "contactus@homeschoolk12.com"; //Replace this with the Email Address to whom you want to send the mail

                System.Net.Mail.MailMessage mail = new System.Net.Mail.MailMessage();
                mail.To.Add(new MailAddress(to, to, System.Text.Encoding.UTF8));
                mail.From = new MailAddress(from, from, System.Text.Encoding.UTF8);
                mail.Subject = "CONFIRMATION - Speaker Training Meeting";
                mail.SubjectEncoding = System.Text.Encoding.UTF8;
                mail.Body = this.GetBody();
                if (string.IsNullOrEmpty(mail.Body))
                {
                    mail.Body = "Dear <br /><br />" + "On behalf of Pharma Company Inc. thank you for registering for the Speaker Training Meeting. <br /><br />" +
                     "You will receive a formal confirmation email within the next 3-5 business days, including information for <br /><br />" +
                     "booking your travel. <br /><br />  Reagsrds.";
                }
                mail.BodyEncoding = System.Text.Encoding.UTF8;
                mail.IsBodyHtml = true;
                mail.Priority = MailPriority.High;

                SmtpClient client = new SmtpClient();
                //Add the Creddentials- use your own email id and password

                client.Credentials = new System.Net.NetworkCredential(from, "speakcore#");

                client.Port = 8889; //587 - Gmail works on this port
                client.Host = "mail.full-stack.guru";  // "smtp.gmail.com" - Gmail;
                client.EnableSsl = false; //true; - Gmail works on Server Secured Layer
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