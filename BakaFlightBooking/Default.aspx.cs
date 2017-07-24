using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FlightBookingWebsite
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DisplayLocation();
            }
        }

        public IQueryable<Location> GetLocation()
        {
            var db = new AirlineTicketBookingDBContext();
            var query = from location in db.Locations orderby location.City select location;
            return query;
        }

        public void DisplayLocation()
        {
            using (var db = new AirlineTicketBookingDBContext())
            {
                var query = from location in db.Locations orderby location.City ascending select new { Id = location.City, Descreption = location.State_Province + " - " + location.Country };
                drpOrigin.DataSource = query.ToList();
                drpOrigin.DataBind();
                drpDestination.DataSource = query.ToList();
                drpDestination.DataBind();
            }
        }

        protected void btnFind_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                Session["origin"] = drpOrigin.SelectedValue;
                Session["destination"] = drpDestination.SelectedValue;
                Session["depart"] = txtDepart.Text;
                Session["arrival"] = txtArrival.Text;
                Response.Redirect("~/Pages/SearchFlightResult.aspx");
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
           
            String depart = txtDepart.Text;
            if (depart.Length == 0)
            {
                args.IsValid = true;
                return;
            }
            for (int i=0; i<depart.Length; i++)
            {
                if(depart[i] == 'd' || depart[i] == 'm' || depart[i] == 'y')
                {
                    args.IsValid = false;
                    return;
                }
            }
            DateTime departD = Convert.ToDateTime(depart);
            int res = DateTime.Compare(departD, DateTime.Today);

            if (res < 0)
            {
                args.IsValid = false;
                return;
            }
            args.IsValid = true;
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            String arrival = txtArrival.Text;
            if (arrival.Length == 0)
            {
                args.IsValid = true;
                return;
            }
            for (int i = 0; i < arrival.Length; i++)
            {
                if (arrival[i] == 'd' || arrival[i] == 'm' || arrival[i] == 'y')
                {
                    args.IsValid = false;
                    return;
                }
            }

            DateTime arrivalD = Convert.ToDateTime(arrival);

            String depart = txtDepart.Text;
            if (depart.Length == 0)
            {
                return;
            }
            for (int i = 0; i < depart.Length; i++)
            {
                if (depart[i] == 'd' || depart[i] == 'm' || depart[i] == 'y')
                {
                    return;
                }
            }

            DateTime departD = Convert.ToDateTime(depart);

            int res = DateTime.Compare(departD, arrivalD);

            if (res > 0)
            {
                args.IsValid = false;
                return;
            }

            args.IsValid = true;
        }
    }
}