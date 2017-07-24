using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class AddUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            double wallet = double.Parse(txtWallet.Text);
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var user = new User()
                {
                    Username = username,
                    Password = password,
                    Wallet = wallet

                };
                db.Users.Add(user);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListUser.aspx");
            }
        }
    }
}