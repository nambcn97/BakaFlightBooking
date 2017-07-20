using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListRoute : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Airport> ddlAirport_GetData()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from airport in db.Airports select airport;
            return query;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int route_ID = int.Parse(txtID.Text);
            int origin_Airport = int.Parse(ddlOriginAirport.SelectedValue);
            int destination_Airport = int.Parse(ddlDestinationAirport.SelectedValue);
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var route = new Route()
                {
                    Route_ID = route_ID,
                    Origin_Airport = origin_Airport,
                    Destination_Airport = destination_Airport
                };
                db.Routes.Add(route);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListRoute.aspx");
            }
        }

    }
}