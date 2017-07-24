using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class UpdateFlight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            if (!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["Id"]);

                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var flight = db.Flights.Find(id);

                    txtFlightNo.Text = flight.Flight_No.ToString();
                    txtDeparture_DateTime.Text = flight.Departure_DateTime.ToString();
                    txtArrival_DateTime.Text = flight.Arrival_DateTime.ToString();
                    DisplayRoutes(flight.Route_ID);
                    DisplayAirplanes(flight.Airplane_ID);

                    ViewState["Id"] = flight.Flight_No;
                }
            }
        }

        public void DisplayRoutes(int? route_ID)
        {
            using (var db = new AirlineTicketBookingDBContext())
            {
                var routes = (from route in db.Routes select route).ToList();
                drpRoute.DataSource = routes;
                drpRoute.DataBind();
            }
            drpRoute.SelectedValue = route_ID.ToString();
        }

        public void DisplayAirplanes(int? airplane_ID)
        {
            using (var db = new AirlineTicketBookingDBContext())
            {
                var airplanes = (from airplane in db.Airplanes select airplane).ToList();
                drpAirplane.DataSource = airplanes;
                drpAirplane.DataBind();
            }
            drpAirplane.SelectedValue = airplane_ID.ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ViewState["Id"].ToString());
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var flight = db.Flights.Find(id);
                if (flight != null)
                {
                    flight.Departure_DateTime = DateTime.Parse(txtDeparture_DateTime.Text);
                    flight.Arrival_DateTime = DateTime.Parse(txtArrival_DateTime.Text);
                    flight.Route_ID = int.Parse(drpRoute.SelectedValue);
                    flight.Airplane_ID = int.Parse(drpAirplane.SelectedValue);
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListFlight.aspx");
            }
        }
    }
}