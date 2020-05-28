using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                ViewState["LoginErrors"] = 0;

            PasswordInvalid.Visible = true;

            if (Request!= null && Request.IsAuthenticated)
            {
                Response.Write("Hello, " + Server.HtmlEncode(User.Identity.Name));

                FormsIdentity id = (FormsIdentity)User.Identity;
                FormsAuthenticationTicket ticket = id.Ticket;

                Response.Write("<p/>TicketName: " + ticket.Name);
                Response.Write("<br/>Cookie Path: " + ticket.CookiePath);
                Response.Write("<br/>Ticket Expiration: " +
                                ticket.Expiration.ToString());
                Response.Write("<br/>Expired: " + ticket.Expired.ToString());
                Response.Write("<br/>Persistent: " + ticket.IsPersistent.ToString());
                Response.Write("<br/>IssueDate: " + ticket.IssueDate.ToString());
                Response.Write("<br/>UserData: " + ticket.UserData);
                Response.Write("<br/>Version: " + ticket.Version.ToString());

                FormsAuthentication.SignOut();
                FormsAuthentication.RedirectToLoginPage();
            }
        }

        protected void Authenticate(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            int userId = 0;

            if (string.IsNullOrEmpty(password))
            {
                PasswordInvalid.Visible = true;
            }
        }
            protected void login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            /*
            if (login.UserName.Contains("KIngsley") && login.Password.Contains("gmail.com"))
            {
                e.Authenticated = true;  
                //login.Visible = false;
                MessageAuthentication.InnerText = "Successfully Logged In";
            }
            else
            {
                e.Authenticated = false;
                MessageAuthentication.InnerText = "Error Logging In";
                //login.Visible = true;
            }
            */
        }
    }
}