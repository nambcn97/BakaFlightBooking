using System;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using BakaFlightBooking.Models;

namespace BakaFlightBooking.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                String userName = txtUsername.Text;
                String password = txtPassword.Text;
                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    User user = db.Users.Find(userName);
                    if (user == null)
                    {
                        lblError.Text = "Username does not exist";
                    }
                    else if (user.Password != password)
                    {
                        lblError.Text = "Incorrect password";
                    }
                    else
                    {
                        FormsAuthentication.RedirectFromLoginPage(userName, false);
                    }
                }
            }
        }
    }
}