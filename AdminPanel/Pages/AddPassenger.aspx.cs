using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class AddPassenger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string fullName = txtName.Text;
            int age = int.Parse(txtAge.Text);
            bool gender = bool.Parse(ddlGender.SelectedValue);
            int tel = int.Parse(txtTel.Text);
            string email = txtEmail.Text;
            string street = txtStreet.Text;
            string city = txtCity.Text;
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var passenger = new Passenger()
                {
                    FullName = fullName,
                    Gender = gender,
                    Tel = tel,
                    Age = age,
                    Email = email,
                    Location_City = city,
                    Street = street
                    
                };
                db.Passengers.Add(passenger);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListPassenger.aspx");
            }
        }
    }
}