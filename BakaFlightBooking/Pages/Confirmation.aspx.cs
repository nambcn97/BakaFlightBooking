﻿using DbLibrary.Models;
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
                //var passenger_id = from passenger in db.Passengers orderby passenger.PassengerID descending select passenger.;
                db.Bookings.Add(new Booking()
                {
                    Ticket_ID = ticket_id,
                    Passenger_ID = db.Passengers.Last().PassengerID,
                    Booking_Date = System.DateTime.Now
                });
                db.SaveChanges();
                db.Payments.Add(new Payment()
                {
                    Booking_ID = db.Bookings.Last().Booking_ID,
                    Payment_Amount = ticket.Price,
                    Username = Session["username"].ToString()
                });
                db.SaveChanges();
                Response.Redirect("~/Page/MyBooking.aspx");
            }
        }
    }
}