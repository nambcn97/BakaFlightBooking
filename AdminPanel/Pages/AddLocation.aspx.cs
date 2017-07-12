using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DbLibrary.Models;
namespace AdminPanel.Pages
{
    public partial class AddLocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                var city = txtCity.Text;
                var province = txtProvince.Text;
                var country = txtCountry.Text;
                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var location = new Location() { City = city, State_Province = province, Country = country };
                    db.Locations.Add(location);
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListLocation.aspx");
            }
        }
    }
}