using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakaFlightBooking.Pages
{
    public partial class Passengers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/ErrorPages/UserLoginRemainder.aspx");
                return;
            }
        }

        protected void nxtBtn_Click(object sender, EventArgs e)
        {
            Passenger p = new Passenger();
            p.FullName = txtLastName.Text + " " + txtFirstName.Text;
            p.Age = int.Parse(txtAge.Text);
            p.Gender = (RdrMale.Checked ? true : false);
            p.Tel = int.Parse(txtTel.Text);
            p.Email = txtEmail.Text;
            p.Street = txtStreet.Text;
            p.Location_City = txtCityLocation.Text;
            Session["passenger"] = p;
            Response.Redirect("~/Pages/Confirmation.aspx");
        }
    }
}