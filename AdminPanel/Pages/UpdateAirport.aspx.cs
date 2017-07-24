using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class UpdateAirport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] == null) Response.Redirect("~/Pages/ListAirport.aspx");
                int id = int.Parse(Request.QueryString["Id"]);

                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var airport = db.Airports.Find(id);

                    txtID.Text = airport.Airport_ID.ToString();
                    txtName.Text = airport.Airport_Name.ToString();
                    ddlLocation.SelectedValue = airport.Location_City;
                    ViewState["Id"] = airport.Airport_ID;

                }
            }

        }
        public IQueryable<Location> ddlLocation_GetData()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from location in db.Locations orderby location.City ascending select location;
            return query;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ViewState["Id"].ToString());
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var airport = db.Airports.Find(id);
                if (airport != null)
                {
                    airport.Airport_Name = txtName.Text;
                    airport.Location_City = ddlLocation.SelectedValue;
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListAirport.aspx");
            }
        }
    }
}