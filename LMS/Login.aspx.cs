﻿using System;
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
        MembershipProvider Membership = null;

        protected void Page_Init(object sender, EventArgs e)
        {
            this.Membership = System.Web.Security.Membership.Provider;
        }

        protected void Logout(object sender, EventArgs e)
        {
            // Sign-Out / Logout the User
            System.Web.Security.FormsAuthentication.SignOut();
            //Response.Redirect("Login", true);
        }
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

                //Response.Redirect("Register.aspx");
                FormsAuthentication.SignOut();
                FormsAuthentication.RedirectToLoginPage();
            }
        }

        protected void Authenticate(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();
            bool rememberme = chkRememberMe.Checked;
            var isAuthenticated = false;

            if (!string.IsNullOrEmpty(username) && !string.IsNullOrEmpty(password))
            {
                // Validate the user against the custom SQL Membership Provider
                isAuthenticated = Membership.ValidateUser(username, password);

                if (isAuthenticated)
                {
                    // Log the user into the site
                    FormsAuthentication.RedirectFromLoginPage(username, rememberme);

                    string userData = "ApplicationSpecific data for this user.";

                    FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1,
                      username,
                      DateTime.Now,
                      DateTime.Now.AddMinutes(30),
                      rememberme,
                      userData,
                      FormsAuthentication.FormsCookiePath);

                    // Encrypt the ticket.
                    string encTicket = FormsAuthentication.Encrypt(ticket);

                    // Create the cookie.
                    Response.Cookies.Add(new HttpCookie(FormsAuthentication.FormsCookieName, encTicket));

                    // Redirect back to original URL.
                    // Response.Redirect(FormsAuthentication.GetRedirectUrl(username, rememberme));
                    string redirectPage = Server.UrlDecode(Request["ReturnUrl"]);

                    if (redirectPage == null)
                        redirectPage = "~/Pages/Register/Register.aspx";

                    // point to redirectPage to return to a Redirect Location
                    Response.Redirect("~/Pages/Register/Register.aspx", true);

                }
            }
        }
      
    }
}