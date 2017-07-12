using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class UpdateAirplane : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int id = int.Parse(Request.QueryString["Id"]);

                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var airplane = db.Airplanes.Find(id);

                    txtAirplaneID.Text = airplane.Airplane_ID.ToString();
                    txtSeatNumbers.Text = airplane.Seat_Numbers.ToString();
                    DisplayProducers(airplane.Producer_ID);

                    ViewState["Id"] = airplane.Airplane_ID;

                }
            }
        }

        public void DisplayProducers(string producer_ID)
        {
            using (var db = new AirlineTicketBookingDBContext())
            {
                var producers = (from producer in db.Producers select producer).ToList();
                drpProducer.DataSource = producers;
                drpProducer.DataBind();
            }
            drpProducer.SelectedValue = producer_ID;
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ViewState["Id"].ToString());
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var airplane = db.Airplanes.Find(id);
                if (airplane != null)
                {
                    airplane.Producer_ID = drpProducer.SelectedValue;
                    airplane.Seat_Numbers = int.Parse(txtSeatNumbers.Text);
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListAirplane.aspx");
            }
        }
    }
}