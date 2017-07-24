using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListRoute1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["admin"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
        }
        public IQueryable grdRoute_GetData()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from route in db.Routes
                        from airport1 in db.Airports
                        from airport2 in db.Airports
                        where route.Origin_Airport == airport1.Airport_ID && route.Destination_Airport == airport2.Airport_ID
                        select new
                        {
                            Route_ID = route.Route_ID,
                            Origin_Airport = airport1.Airport_Name,
                            Destination_Airport = airport2.Airport_Name,
                            Distance = route.Distance
                        };
            return query;
        }
        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect(string.Format("~/Pages/UpdateRoute.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int id = int.Parse(e.CommandArgument.ToString());
            using (var db = new AirlineTicketBookingDBContext())
            {
                var route = new Route() { Route_ID = id };
                db.Routes.Attach(route);
                db.Routes.Remove(route);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListRoute.aspx");
            }
        }
    }
}