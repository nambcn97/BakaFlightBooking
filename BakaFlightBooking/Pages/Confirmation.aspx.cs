using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakaFlightBooking.Pages
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int ticket_id = int.Parse((String)Session["ticket_id"]);

                txtFlightNo.Text = Session["flight_no"].ToString();
                txtSeatNo.Text = ticket_id.ToString();
                var db = new AirlineTicketBookingDBContext();
                txtAmount.Text = db.Tickets.Find(ticket_id).Price.ToString();
            }

        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            int ticket_id = int.Parse((String)Session["ticket_id"]);
            Passenger p = (Passenger)Session["passenger"];
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                User user = db.Users.Find(Session["username"]);
                Ticket ticket = db.Tickets.Find(ticket_id);
                if (user.Wallet<ticket.Price)
                {
                    lblWarn.Visible = true;
                    return;
                }
                db.Passengers.Add(p);
                db.SaveChanges();
                var passenger_ID = (from pa in db.Passengers select pa).ToList().LastOrDefault().PassengerID;
                //var passenger_id = from passenger in db.Passengers orderby passenger.PassengerID descending select passenger.;
                db.Bookings.Add(new Booking()
                {
                    Ticket_ID = ticket_id,
                    Passenger_ID = passenger_ID,
                    Booking_Date = System.DateTime.Now
                });
                db.SaveChanges();
                var booking_ID = (from pa in db.Bookings select pa).ToList().LastOrDefault().Booking_ID;
                db.Payments.Add(new Payment()
                {
                    Booking_ID = booking_ID,
                    Payment_Amount = ticket.Price,
                    Username = Session["username"].ToString(),
                    Payment_Date = System.DateTime.Now
                });
                db.SaveChanges();
                Response.Redirect("MyBooking.aspx");
            }
        }
    }
}