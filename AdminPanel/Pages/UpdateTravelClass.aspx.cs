using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class UpdateTravelClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            if (!IsPostBack)
            {
                int id = Int32.Parse(Request.QueryString["Id"].ToString());

                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var travelclass = db.TravelClasses.Find(id);

                    txtTravelClassID.Text = travelclass.Travel_Class_ID.ToString();
                    txtName.Text = travelclass.Name;
                    txtDescription.Text = travelclass.Description;

                    ViewState["Id"] = travelclass.Travel_Class_ID;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = Int32.Parse(ViewState["Id"].ToString());
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var travelclass = db.TravelClasses.Find(id);
                if (travelclass != null)
                {
                    travelclass.Name = txtName.Text;
                    travelclass.Description = txtDescription.Text;
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListTravelClass.aspx");
            }
        }
    }
}