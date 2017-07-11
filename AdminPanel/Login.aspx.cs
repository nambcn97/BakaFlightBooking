
using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakaFlightBooking
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] != null)
            {
                Response.Redirect("Default.aspx");
            }
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                String userName = txtUserName.Text;
                String password = txtPassword.Text;
                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    Admin user = db.Admins.Find(userName);
                    if (user == null)
                    {
                        lblError.Text = "Username does not exist";
                    }
                    else if (user.password != password)
                    {
                        lblError.Text = "Incorrect password";
                    }
                    else
                    {
                        Session["admin"] = userName;
                        Response.Redirect("Default.aspx");
                    }
                }
            }
        }
    }
}