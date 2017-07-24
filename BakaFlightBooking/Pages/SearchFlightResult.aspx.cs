using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakaFlightBooking.Pages
{
    public partial class SearchFlightResult : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String departTime = (String)Session["depart"];
                String arrivalTime = (String)Session["arrival"];
                String from = (String)Session["origin"];
                String to = (String)Session["destination"];

                if (from == null || to == null || from.Length == 0 || to.Length == 0)
                {
                    noResultlbl.Text = "NO RECORD CAN BE FOUND !";
                    return;
                }
                
                grdFlights.DataSource = ListFlight(departTime, arrivalTime, from, to);
                grdFlights.DataBind();
            }
        }

        private List<int> LoadAirport(String location)
        {
            List<int> airports;
            using (var db = new AirlineTicketBookingDBContext())
            {
                var query = from d in db.Airports where d.Location.City == location select d.Airport_ID;
                airports = query.ToList();
            }
            return airports;
        }

        private List<int> LoadRoad(List<int> original, List<int> destination)
        {
            var ori = original;
            var des = destination;
            List<int> routes;
            using (var db = new AirlineTicketBookingDBContext())
            {
                var query = from d in db.Routes where ori.Contains(d.Airport.Airport_ID) && des.Contains(d.Airport1.Airport_ID) select d.Route_ID;
                routes = query.ToList();
            }
            return routes;
        }

        private List<Flight> ListFlight(String departTime, String arrivalTime, String original, String destination)
        {
            List<int> originalAp = LoadAirport(original);
            List<int> destinationAp = LoadAirport(destination);
            List<int> routes = LoadRoad(originalAp, destinationAp);
            List<Flight> flights;
            
            using (var db = new AirlineTicketBookingDBContext())
            {
                if (departTime.Length != 0 && arrivalTime.Length != 0)
                {
                    DateTime depart = Convert.ToDateTime(departTime);
                    DateTime arrival = Convert.ToDateTime(arrivalTime);
                    var query = from d in db.Flights where routes.Contains((int)d.Route_ID) && 
                                depart == ((DateTime) d.Departure_DateTime).Date
                                && arrival.Date == ((DateTime)d.Arrival_DateTime).Date
                                select d;
                    flights = query.ToList();
                }
                else if (departTime.Length != 0)
                {
                    DateTime depart = Convert.ToDateTime(departTime);
                    var query = from d in db.Flights where routes.Contains((int) d.Route_ID) && 
                                depart == ((DateTime) d.Departure_DateTime).Date select d;
                    flights = query.ToList();
                }
                else if (arrivalTime.Length != 0)
                {
                    DateTime arrival = Convert.ToDateTime(arrivalTime);
                    var query = from d in db.Flights where routes.Contains((int) d.Route_ID) && 
                                arrival.Date == ((DateTime) d.Arrival_DateTime).Date select d;
                    flights = query.ToList();
                }
                else
                {
                    var query = from d in db.Flights where routes.Contains((int) d.Route_ID) select d;
                    flights = query.ToList();
                }
            }

            return flights;
        }
        
    }
}