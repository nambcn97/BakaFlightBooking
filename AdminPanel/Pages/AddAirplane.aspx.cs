using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class AddAirplane : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public IQueryable<Producer> GetProducers()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from producer in db.Producers orderby producer.Producer_ID select producer;
            return query;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int airplane_ID = int.Parse(txtAirplaneID.Text);
            string producer_ID = drpProducer.SelectedValue;
            int seat_Numbers = int.Parse(txtSeatNumbers.Text);
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                //var producer = db.Producers.Find(producer_ID);
                var airplane = new Airplane()
                {
                    Airplane_ID = airplane_ID,
                    Producer_ID = producer_ID,
                    Seat_Numbers = seat_Numbers
                };
                db.Airplanes.Add(airplane);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListAirplane.aspx");
            }

        }
    }
}