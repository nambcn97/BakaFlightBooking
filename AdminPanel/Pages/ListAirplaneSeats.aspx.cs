using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListAirplaneSeats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            if (!IsPostBack)
            {
                DisplayData();
            }
        }

        public void DisplayData()
        {
            //var db = new AirlineTicketBookingDBContext();
            //var query = from airplaneseat in db.AirplaneSeats orderby airplaneseat.Airplane_ID, airplaneseat.Seat_No select airplaneseat;

            //grdAirplaneSeats.DataSource = query.ToList();
            //grdAirplaneSeats.DataBind();

            var db = new AirlineTicketBookingDBContext();
            var query = from seat in db.AirplaneSeats
                join travelclass in db.TravelClasses on seat.Travel_Class_ID equals travelclass.Travel_Class_ID
                select new { seat.Airplane_ID, seat.Seat_No, travelclass.Name};
            grdAirplaneSeats.DataSource = query.ToList();
            grdAirplaneSeats.DataBind();
        }

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            String id = e.CommandArgument.ToString();
            Response.Redirect(string.Format("~/Pages/UpdateAirplaneSeat.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            String id = e.CommandArgument.ToString();
            String[] param = id.Split(',');
            int airplane_ID = int.Parse(param[0]);
            int seat_No = int.Parse(param[1]);

            using (var db = new AirlineTicketBookingDBContext())
            {
                var airplaneSeat = new AirplaneSeat() { Airplane_ID = airplane_ID, Seat_No = seat_No};
                db.AirplaneSeats.Attach(airplaneSeat);
                db.AirplaneSeats.Remove(airplaneSeat);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListAirplaneSeats.aspx");
            }
        }
    }
}