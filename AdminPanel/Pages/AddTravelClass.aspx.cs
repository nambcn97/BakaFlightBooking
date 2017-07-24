using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class AddTravelClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int travelclass_ID = Int32.Parse(txtTravelClassID.Text);
            string name = txtName.Text;
            string description = txtDescription.Text;

            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var travelclass = new TravelClass()
                {
                    Travel_Class_ID = travelclass_ID,
                    Name = name,
                    Description = description
                };
                db.TravelClasses.Add(travelclass);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListTravelClass.aspx");
            }
        }
    }
}