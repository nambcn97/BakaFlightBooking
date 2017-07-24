using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class AddFlight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
        }

        public IQueryable<Route> GetRoutes()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from route in db.Routes orderby route.Route_ID select route;
            return query;
        }

        public IQueryable<Airplane> GetAirplanes()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from airplane in db.Airplanes orderby airplane.Airplane_ID select airplane;
            return query;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            DateTime departure_DateTime = DateTime.Parse(txtDeparture_DateTime.Text);
            DateTime arrival_DateTime = DateTime.Parse(txtArrival_DateTime.Text);
            int route_ID = int.Parse(drpRoute.SelectedValue);
            int airplane_ID = int.Parse(drpAirplane.SelectedValue);
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var flight = new Flight()
                {
                    Departure_DateTime = departure_DateTime,
                    Arrival_DateTime = arrival_DateTime,
                    Route_ID = route_ID,
                    Airplane_ID = airplane_ID
                };
                db.Flights.Add(flight);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListFlight.aspx");
            }

        }
    }
}