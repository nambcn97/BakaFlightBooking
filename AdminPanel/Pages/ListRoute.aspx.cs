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

        }
        public IQueryable<Route> grdRoute_GetData()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from route in db.Routes select route;
            return query;
        }
        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect(string.Format("~/Pages/UpdateRoute.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int id = (int)e.CommandArgument;
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