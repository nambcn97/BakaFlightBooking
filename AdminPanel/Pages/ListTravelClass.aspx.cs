using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListTravelClass : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayData();
            }
        }

        public void DisplayData()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from travelclass in db.TravelClasses orderby travelclass.Travel_Class_ID ascending select travelclass;

            grdTravelClasses.DataSource = query.ToList();
            grdTravelClasses.DataBind();
        }

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect(string.Format("~/Pages/UpdateTravelClass.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int id = Int32.Parse(e.CommandArgument.ToString());
            using (var db = new AirlineTicketBookingDBContext())
            {
                var travelclass = new TravelClass() { Travel_Class_ID = id };
                db.TravelClasses.Attach(travelclass);
                db.TravelClasses.Remove(travelclass);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListTravelClass.aspx");
            }
        }
    }
}