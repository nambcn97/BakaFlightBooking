using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListFlight : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayData();
            }
        }

        public void DisplayData()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from flight in db.Flights orderby flight.Flight_No ascending select flight;

            grdFlights.DataSource = query.ToList();
            grdFlights.DataBind();
        }

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            int id = Int32.Parse(e.CommandArgument.ToString());
            Response.Redirect(string.Format("~/Pages/UpdateFlight.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int id = Int32.Parse(e.CommandArgument.ToString());
            using (var db = new AirlineTicketBookingDBContext())
            {
                var flight = new Flight() { Flight_No = id };
                db.Flights.Attach(flight);
                db.Flights.Remove(flight);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListFlight.aspx");
            }
        }
    }
}