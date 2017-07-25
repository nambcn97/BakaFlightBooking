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
                if ((String) Session["hasChose"] == "1")
                {
                    Label1.ForeColor = System.Drawing.Color.Red;
                    Label1.Text = "This ticket has been booked";
                }
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
                    
                    //select all booking
                    var query = from d in db.Bookings select d;
                    List<Booking> bk = query.ToList();
                    List<int> tks = new List<int>();
                    for (int i=0; i<bk.Count; i++)
                    {
                        tks.Add((int)bk[i].Ticket_ID);
                    }
                    // select all ticket which is not contained in any booking
                    var query1 = from d in db.Tickets where d.Flight_No == fl.Flight_No && !tks.Contains(d.Ticket_ID) select new { id = d.Ticket_ID, txt = d.Seat_No + "-" + d.Price };
                    DropSeat.DataSource = query1.ToList();
                    DropSeat.DataBind();
                }
            }
        }

        protected void Choose_Click(object sender, EventArgs e)
        {
            using (var db = new AirlineTicketBookingDBContext())
            {
                var query = from d in db.Bookings select d;
                List<Booking> bk = query.ToList();
                List<int> tks = new List<int>();
                for (int i = 0; i < bk.Count; i++)
                {
                    tks.Add((int)bk[i].Ticket_ID);
                }
                if (tks.Contains(int.Parse(DropSeat.SelectedValue)))
                {
                    Session["hasChose"] = "1";
                    Response.Redirect("~/Pages/ChooseSeat.aspx");
                }
                Session["ticket_id"] = DropSeat.SelectedValue;
                Session["flight_no"] = txtFlightNo.Text;
                Response.Redirect("~/Pages/Passengers.aspx");
            }
        }
    }
}