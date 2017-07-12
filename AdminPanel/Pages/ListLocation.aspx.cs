using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListLocation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public IQueryable<Location> grdLocation_GetData()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from location in db.Locations orderby location.City ascending select location;
            return query;
        }
    }
}