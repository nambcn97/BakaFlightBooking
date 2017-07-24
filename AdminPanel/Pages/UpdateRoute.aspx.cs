using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class UpdateRoute : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] == null) Response.Redirect("~/Pages/ListRoute.aspx");
                int id = int.Parse(Request.QueryString["Id"]);

                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var route = db.Routes.Find(id);

                    txtID.Text = route.Route_ID.ToString();
                    ddlOriginAirport.SelectedValue = route.Origin_Airport.ToString();
                    ddlDestinationAirport.SelectedValue = route.Destination_Airport.ToString();
                    txtDistance.Text = route.Distance.ToString();
                    ViewState["Id"] = route.Route_ID;

                }
            }
        }
        public IQueryable<Airport> ddlAirport_GetData()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from airport in db.Airports select airport;
            return query;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int id = int.Parse(ViewState["Id"].ToString());
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var route = db.Routes.Find(id);
                if (route != null)
                {
                    route.Origin_Airport = int.Parse(ddlOriginAirport.SelectedValue);
                    route.Destination_Airport = int.Parse(ddlDestinationAirport.SelectedValue);
                    route.Distance = int.Parse(txtDistance.Text);
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListRoute.aspx");
            }
        }
    }
}