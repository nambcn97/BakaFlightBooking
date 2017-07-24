using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListPassenger : System.Web.UI.Page
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
            var query = from passenger in db.Passengers orderby passenger.PassengerID ascending select passenger;
            grvPassenger.DataSource = query.ToList();
            grvPassenger.DataBind();
        }

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            int id = Int32.Parse(e.CommandArgument.ToString());
            Response.Redirect(string.Format("~/Pages/UpdatePassenger.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int id = Int32.Parse(e.CommandArgument.ToString());
            using (var db = new AirlineTicketBookingDBContext())
            {
                var passenger = new Passenger() { PassengerID = id };
                db.Passengers.Attach(passenger);
                db.Passengers.Remove(passenger);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListPassenger.aspx");
            }
        }
    }
}