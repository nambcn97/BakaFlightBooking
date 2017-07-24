using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakaFlightBooking.Pages
{
    public partial class ChooseSeat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int flight_no = int.Parse(Request["id"]);
                using (var db = new AirlineTicketBookingDBContext())
                {
                    Flight fl = db.Flights.Find(flight_no);
                    txtFlightNo.Text = flight_no + "";
                    Route rt = db.Routes.Find(fl.Route_ID);
                    Airport ap1 = db.Airports.Find(rt.Origin_Airport);
                    Airport ap2 = db.Airports.Find(rt.Destination_Airport);
                    txtDepartFlyingFrom.Text = ap1.Airport_Name + "-" + ap1.Location.City;
                    txtDepartFlyingTo.Text = ap2.Airport_Name + "-" + ap2.Location.City;
                    txtDepartTime.Text = fl.Departure_DateTime.ToString();
                    txtArrivalTime.Text = fl.Arrival_DateTime.ToString();
                }
            }
        }
    }
}