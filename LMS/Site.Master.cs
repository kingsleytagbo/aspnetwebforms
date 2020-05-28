using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Logout(object sender, EventArgs e)
        {
            // Sign-Out / Logout the User
            System.Web.Security.FormsAuthentication.SignOut();
            //Response.Redirect("Login", true);
        }
    }
}