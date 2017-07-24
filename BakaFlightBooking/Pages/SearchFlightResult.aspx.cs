using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakaFlightBooking.Pages
{
    public partial class SearchFlightResult : System.Web.UI.Page
    {
        protected List<Flight> f1;
        protected List<Flight> f2;
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
                    return;
                }

                txtDepartFlyingFrom.Text = from;
                txtDepartFlyingTo.Text = to;
                txtArrivalFlyingFrom.Text = to;
                txtArrivalFlyingTo.Text = from;

                f1 = ListFlightDepart(departTime, from, to);
                f2 = ListFlightArrival(arrivalTime, to, from);
                f1.AddRange(ListFlightArrival(departTime, to, from));
                f2.AddRange(ListFlightDepart(arrivalTime, from, to));

                DataTable dt = new DataTable();
                dt.Columns.Add("FlightID");
                dt.Columns.Add("OperatedBy");
                dt.Columns.Add("Depart");
                dt.Columns.Add("Arrive");

                using (var db = new AirlineTicketBookingDBContext())
                {
                    for (int i = 0; i < f1.Count; i++)
                    {
                        dt.Rows.Add(f1[i].Flight_No, db.Airplanes.Find(f1[i].Airplane_ID).Producer_ID, f1[i].Departure_DateTime, f1[i].Arrival_DateTime);
                    }
                }

                DepartDropList.DataSource = f1;
                DepartDropList.DataBind();
                DepartGridView.DataSource = dt;
                DepartGridView.DataBind();

                DataTable dt1 = new DataTable();
                dt1.Columns.Add("FlightID");
                dt1.Columns.Add("OperatedBy");
                dt1.Columns.Add("Depart");
                dt1.Columns.Add("Arrive");

                using (var db = new AirlineTicketBookingDBContext())
                {
                    for (int i = 0; i < f2.Count; i++)
                    {
                        dt1.Rows.Add(f2[i].Flight_No, db.Airplanes.Find(f2[i].Airplane_ID).Producer_ID, f2[i].Departure_DateTime, f2[i].Arrival_DateTime);
                    }
                }

                ArrivalDropList.DataSource = f2;
                ArrivalDropList.DataBind();
                ArrivalGridView.DataSource = dt1;
                ArrivalGridView.DataBind();
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
        
        private List<Flight> ListFlightDepart(String departTime, String original, String destination)
        {
            List<int> originalAp = LoadAirport(original);
            List<int> destinationAp = LoadAirport(destination);
            List<int> routes = LoadRoad(originalAp, destinationAp);
            List<Flight> flights;
            
            using (var db = new AirlineTicketBookingDBContext())
            { 
                if (departTime.Length != 0)
                {
                    DateTime depart = Convert.ToDateTime(departTime);
                    var query = from d in db.Flights where routes.Contains((int) d.Route_ID) && 
                                depart == ((DateTime) d.Departure_DateTime).Date select d;
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

        private List<Flight> ListFlightArrival(String arrivalTime, String original, String destination)
        {
            List<int> originalAp = LoadAirport(original);
            List<int> destinationAp = LoadAirport(destination);
            List<int> routes = LoadRoad(originalAp, destinationAp);
            List<Flight> flights;

            using (var db = new AirlineTicketBookingDBContext())
            {
                if (arrivalTime.Length != 0)
                {
                    DateTime depart = Convert.ToDateTime(arrivalTime);
                    var query = from d in db.Flights
                                where routes.Contains((int)d.Route_ID) &&
           depart == ((DateTime)d.Arrival_DateTime).Date
                                select d;
                    flights = query.ToList();
                }
                else
                {
                    var query = from d in db.Flights where routes.Contains((int)d.Route_ID) select d;
                    flights = query.ToList();
                }
            }

            return flights;
        }

        protected void BuyDepart_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChooseSeat.aspx?id=" + DepartDropList.SelectedValue);
        }

        protected void BuyArrival_Click(object sender, EventArgs e)
        {
            Response.Redirect("ChooseSeat.aspx?id=" + ArrivalDropList.SelectedValue);
        }
    }
}