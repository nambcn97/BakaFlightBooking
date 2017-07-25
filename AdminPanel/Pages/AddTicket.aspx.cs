using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class AddTicket : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayFlights();
            }
        }
        
        public void DisplayFlights()
        {
            using (var db = new AirlineTicketBookingDBContext())
            {
                var flights = (from flight in db.Flights orderby flight.Flight_No select flight).ToList();
                drpFlightNo.DataSource = flights;
                drpFlightNo.DataBind();
            }

            int flight_No = int.Parse(drpFlightNo.SelectedValue);
            using (var db = new AirlineTicketBookingDBContext())
            {
                var f = (from flight in db.Flights
                         where flight.Flight_No == flight_No
                         select flight).SingleOrDefault();
                txtAirplaneID.Text = f.Airplane_ID.ToString();
                DisplaySeats(f.Airplane_ID);
            }
        }

        public void DisplaySeats(int? airplane_ID)
        {
            drpSeatNo.Items.Clear();
            using (var db = new AirlineTicketBookingDBContext())
            {
                var seats = (from seat in db.AirplaneSeats where seat.Airplane_ID == airplane_ID orderby seat.Seat_No select seat).ToList();
                drpSeatNo.DataSource = seats;
                drpSeatNo.DataBind();
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int flight_No = int.Parse(drpFlightNo.SelectedValue);
            int seat_No = int.Parse(drpSeatNo.SelectedValue);
            int airplane_ID = int.Parse(txtAirplaneID.Text);
            int price = int.Parse(txtPrice.Text);
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var ticket = new Ticket()
                {
                    Flight_No = flight_No,
                    Seat_No = seat_No,
                    Airplane_ID = airplane_ID,
                    Price = price,
                };
                db.Tickets.Add(ticket);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListTicket.aspx");
            }

        }
        
        protected void drpFlightNo_SelectedIndexChanged(object sender, EventArgs e)
        {
            int flight_No = int.Parse(drpFlightNo.SelectedValue);
            using (var db = new AirlineTicketBookingDBContext())
            {
                var f = (from flight in db.Flights
                         where flight.Flight_No == flight_No
                         select flight).SingleOrDefault();
                txtAirplaneID.Text = f.Airplane_ID.ToString();
                DisplaySeats(f.Airplane_ID);
            }
        }
    }
}