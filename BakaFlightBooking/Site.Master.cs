using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using BakaFlightBooking;

namespace FlightBookingWebsite
{
    public partial class SiteMaster : MasterPage
    {
        protected String userName;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null) userName = Session["username"].ToString();
        }
        protected string GetCurrentUserFullName()
        {
            return userName;
        }

        protected Role GetCurrentUserRole()
        {
            return PageUtil.GetCurrentUserRole(userName);
        }

        protected bool isLogged()
        {
            return Session["username"] != null;
        }
    }

}