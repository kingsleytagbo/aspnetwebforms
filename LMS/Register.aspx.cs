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

        /// <summary>
        /// Server Side Validation of Register User Page
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void RegisterUser(object sender, EventArgs e)
        {
            var firstname = txtFirstName.Text;
            var lastname = txtLastName.Text;
            var state = dropDownListState.SelectedValue;
            var email = txtEmail.Text;
            var confirmEmail = txtConfirmEmail.Text;
            var subscribeMe = chkSubscribeMe.Checked;

            if (
                !string.IsNullOrEmpty(firstname) &&
                !string.IsNullOrEmpty(lastname) &&
                !string.IsNullOrEmpty(state) &&
                !string.IsNullOrEmpty(email) &&
                !string.IsNullOrEmpty(confirmEmail) &&
                (email != confirmEmail)
             )
            {
                //Server Side Validation Failed
                return;
            }
            else
            {
                //Server Side Validation Succeeded
            }
        }
      
    }
}