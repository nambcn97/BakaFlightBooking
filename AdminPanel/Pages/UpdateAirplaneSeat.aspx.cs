using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class UpdateAirplaneSeat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            if (!IsPostBack)
            {
                String id = Request.QueryString["Id"];
                String[] param = id.Split(',');
                int airplane_ID = int.Parse(param[0]);
                int seat_No = int.Parse(param[1]);

                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var airplaneSeat = db.AirplaneSeats.Find(airplane_ID, seat_No);

                    txtAirplaneID.Text = airplaneSeat.Airplane_ID.ToString();
                    txtSeatNo.Text = airplaneSeat.Seat_No.ToString();
                    DisplayTravelClasses(airplaneSeat.Travel_Class_ID);

                    ViewState["Id"] = id;
                }
            }
        }

        public void DisplayTravelClasses(int? producer_ID)
        {
            using (var db = new AirlineTicketBookingDBContext())
            {
                var travelClasses = (from travelclass in db.TravelClasses select travelclass).ToList();
                drpTravelClasses.DataSource = travelClasses;
                drpTravelClasses.DataBind();
            }
            drpTravelClasses.SelectedValue = producer_ID.ToString();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            String id = ViewState["Id"].ToString();
            String[] param = id.Split(',');
            int airplane_ID = int.Parse(param[0]);
            int seat_No = int.Parse(param[1]);

            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var airplaneSeat = db.AirplaneSeats.Find(airplane_ID, seat_No);
                if (airplaneSeat != null)
                {
                    airplaneSeat.Travel_Class_ID = int.Parse(drpTravelClasses.SelectedValue);
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListAirplaneSeats.aspx");
            }
        }
    }
}