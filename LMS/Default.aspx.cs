using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                ViewState["LoginErrors"] = 0;
        }
        protected void login_Authenticate(object sender, AuthenticateEventArgs e)
        {
            if (login.UserName.Contains("KIngsley") && login.Password.Contains("gmail.com"))
            {
                e.Authenticated = true;  
                login.Visible = false;
                MessageAuthentication.InnerText = "Successfully Logged In";
            }
            else
            {
                e.Authenticated = false;
                MessageAuthentication.InnerText = "Error Logging In";
                login.Visible = true;
            }
        }
    }
}