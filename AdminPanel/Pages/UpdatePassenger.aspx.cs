using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class UpdatePassenger : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] == null) Response.Redirect("~/Pages/ListPassenger.aspx");
                int id = int.Parse(Request.QueryString["Id"]);

                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var passenger = db.Passengers.Find(id);

                    txtName.Text = passenger.FullName;
                    txtAge.Text = passenger.Age.ToString();
                    ddlGender.SelectedValue = passenger.Gender.ToString();
                    txtEmail.Text = passenger.Email;
                    txtStreet.Text = passenger.Street;
                    txtCity.Text = passenger.Location_City;
                    ViewState["Id"] = id;

                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ViewState["Id"].ToString());
            string fullName = txtName.Text;
            int age = int.Parse(txtAge.Text);
            bool gender = bool.Parse(ddlGender.SelectedValue);
            int tel = int.Parse(txtTel.Text);
            string email = txtEmail.Text;
            string street = txtStreet.Text;
            string city = txtCity.Text;
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var passenger = db.Passengers.Find(id);
                if (passenger != null)
                {
                    passenger.FullName = fullName;
                    passenger.Age = age;
                    passenger.Email = email;
                    passenger.Gender = gender;
                    passenger.Tel = tel;
                    passenger.Street = street;
                    passenger.Location_City = city;
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListPassenger.aspx");
            }
        }
    }
}