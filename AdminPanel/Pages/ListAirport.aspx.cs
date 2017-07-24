using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListAirport : System.Web.UI.Page
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
            var query = from airport in db.Airports orderby airport.Airport_ID select airport;
            grvAirports.DataSource = query.ToList();
            grvAirports.DataBind();
        }


        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect(string.Format("~/Pages/UpdateAirport.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int id = (int) e.CommandArgument;
            using (var db = new AirlineTicketBookingDBContext())
            {
                var airport = new Airport() { Airport_ID = id };
                db.Airports.Attach(airport);
                db.Airports.Remove(airport);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListAirport.aspx");
            }
        }
    }
}