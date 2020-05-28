using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LMS
{
    public partial class Register : Page
    {
        MembershipProvider Membership = null;

        protected void Page_Init(object sender, EventArgs e)
        {
            this.Membership = System.Web.Security.Membership.Provider;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
                ViewState["LoginErrors"] = 0;
        }

        protected void RegisterUser(object sender, EventArgs e)
        {
        }
      
    }
}