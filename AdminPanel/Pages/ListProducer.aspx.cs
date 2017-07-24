using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListProducer : System.Web.UI.Page
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
            var db = new AirlineTicketBookingDBContext();
            var query = from producer in db.Producers select producer;

            grdProducers.DataSource = query.ToList();
            grdProducers.DataBind();
        }

        //protected void btnSearch_Click(object sender, EventArgs e)
        //{
        //    int id = 0;
        //    int.TryParse(txtId.Text, out id);
        //    DisplayData(id);
        //}

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect(string.Format("~/Pages/UpdateProducer.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            using (var db = new AirlineTicketBookingDBContext())
            {
                var producer = new Producer() { Producer_ID = id };
                db.Producers.Attach(producer);
                db.Producers.Remove(producer);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListProducer.aspx");
            }
        }
    }
}