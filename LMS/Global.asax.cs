using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;

namespace LMS
{
    public class Global : HttpApplication
    {
        MembershipProvider Membership = null;
        
        protected void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);

            this.Membership = System.Web.Security.Membership.Provider;
            int totalUsers = -1;

            if(Membership!= null)
            {
                var user = Membership.GetAllUsers(0, 1, out totalUsers);

                if (user == null)
                {
                    var membershipStatus = new System.Web.Security.MembershipCreateStatus();
                    this.Membership.CreateUser("Kingsley", "@gmail.com", "@gmail.com", "What is my first name", "KIngsley",
                         true, null, out membershipStatus);
                }
            }

            /*
            var membershipStatus = new System.Web.Security.MembershipCreateStatus();
            LMS.Business.CustomMembershipProvider provider = new LMS.Business.CustomMembershipProvider();
            provider.CreateUser("Kingsley", "@gmail.com", "@gmail.com", "What is my first name", "KIngsley",
                 true, null, out membershipStatus);
           */
        }

        protected void Session_PostAuthenticateRequest(object sender, EventArgs e)
        {
            try
            {
                var authCookie = Context.Request.Cookies[FormsAuthentication.FormsCookieName];
                if (authCookie == null || authCookie.Value == string.Empty)
                    return;

                var ticket = FormsAuthentication.Decrypt(authCookie.Value);

            }
            catch(Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
    }
}