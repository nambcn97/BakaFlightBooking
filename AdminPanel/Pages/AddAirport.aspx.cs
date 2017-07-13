using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class AddAirport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void checkExist(object source, ServerValidateEventArgs args)
        {
            string stringID = args.Value;
            int id = int.Parse(stringID);
            var db = new AirlineTicketBookingDBContext();
            var airport = db.Airports.Find(id);
            args.IsValid = (airport == null);
        }

        public IQueryable<Location> ddlLocation_GetData()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from location in db.Locations orderby location.City ascending select location;
            return query;
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int airport_ID = int.Parse(txtID.Text);
            string airport_Name = txtName.Text;
            string location = ddlLocation.SelectedItem.ToString();
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var airport = new Airport()
                {
                    Airport_ID = airport_ID,
                    Airport_Name = airport_Name,
                    Location_City = location
                };
                db.Airports.Add(airport);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListAirport.aspx");
            }
        }
    }
}