using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakaFlightBooking.Account
{
    public partial class UserCheckOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void CheckBoxRequired_ServerValidate(object sender, ServerValidateEventArgs e)
        {
            e.IsValid = ckbCheck.Checked;
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Response.Redirect("UserConfirmation.aspx");
            }
        }
    }
}