using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class UpdateProducer : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string id = Request.QueryString["Id"];

                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var producer = db.Producers.Find(id);

                    txtProducerID.Text = producer.Producer_ID;
                    txtProducerName.Text = producer.Producer_Name;
                    txtIcon.Text = producer.Icon;
                    txtDescription.Text = producer.Description;
                    
                    ViewState["Id"] = producer.Producer_ID;
                }
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string id = ViewState["Id"].ToString();
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var producer = db.Producers.Find(id);
                if (producer != null)
                {
                    producer.Producer_Name = txtProducerName.Text;
                    producer.Icon = txtIcon.Text;
                    producer.Description = txtDescription.Text;
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListProducer.aspx");
            }
        }
    }
}