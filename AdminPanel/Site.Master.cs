using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace AdminPanel
{
    public partial class SiteMaster : MasterPage
    {
        protected string userName;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                userName = Session["admin"].ToString();
            }
        }
        protected bool isLogged()
        {
            return Session["admin"] != null;
        }

    }

}