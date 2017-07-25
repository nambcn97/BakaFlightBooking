using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListTicket : System.Web.UI.Page
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
            var query = from ticket in db.Tickets orderby ticket.Ticket_ID ascending select ticket;

            grdTickets.DataSource = query.ToList();
            grdTickets.DataBind();
        }

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            int id = Int32.Parse(e.CommandArgument.ToString());
            Response.Redirect(string.Format("~/Pages/UpdateTicket.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            int id = Int32.Parse(e.CommandArgument.ToString());
            using (var db = new AirlineTicketBookingDBContext())
            {
                var ticket = new Ticket() { Ticket_ID = id };
                db.Tickets.Attach(ticket);
                db.Tickets.Remove(ticket);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListTicket.aspx");
            }
        }
    }
}