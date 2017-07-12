using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class AddProducer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string producer_ID = txtProducerID.Text;
            string producer_Name = txtProducerName.Text;
            string icon = txtIcon.Text;
            string description = txtDescription.Text;

            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var producer = new Producer()
                {
                    Producer_ID = producer_ID,
                    Producer_Name = producer_Name,
                    Icon = icon,
                    Description = description
                };
                db.Producers.Add(producer);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListProducer.aspx");
            }
        }
    }
}