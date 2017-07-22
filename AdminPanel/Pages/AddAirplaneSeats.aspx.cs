using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class AddAirplaneSeats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Airplane> GetAirplanes()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from airplane in db.Airplanes orderby airplane.Airplane_ID select airplane;
            return query;
        }

        public IQueryable<TravelClass> GetTravelClasss()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from travelclass in db.TravelClasses orderby travelclass.Travel_Class_ID select travelclass;
            return query;
        }
        protected void btnSave_Click(object sender, EventArgs e)
        {
            int airplane_ID = int.Parse(drpAirplanes.SelectedValue);
            int seat_No = int.Parse(txtSeatNo.Text);
            int travel_Class_ID = int.Parse(drpTravelClasses.SelectedValue);

            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var airplaneSeat = new AirplaneSeat()
                {
                    Airplane_ID = airplane_ID,
                    Seat_No = seat_No,
                    Travel_Class_ID = travel_Class_ID
                };
                db.AirplaneSeats.Add(airplaneSeat);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListAirplaneSeats.aspx");
            }

        }
    }
}