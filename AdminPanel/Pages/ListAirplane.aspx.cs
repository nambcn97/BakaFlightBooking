using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListAirplane : System.Web.UI.Page
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
            var query = from airplane in db.Airplanes orderby airplane.Airplane_ID ascending select airplane;

            grdAirplanes.DataSource = query.ToList();
            grdAirplanes.DataBind();
        }

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            int id = Int32.Parse(e.CommandArgument.ToString());
            Response.Redirect(string.Format("~/Pages/UpdateAirplane.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int id = Int32.Parse(e.CommandArgument.ToString());
            using (var db = new AirlineTicketBookingDBContext())
            {
                var airplane = new Airplane() { Airplane_ID = id };
                db.Airplanes.Attach(airplane);
                db.Airplanes.Remove(airplane);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListAirplane.aspx");
            }
        }
    }
}