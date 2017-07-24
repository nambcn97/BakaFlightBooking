using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class ListUser : System.Web.UI.Page
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
            var query = from user in db.Users select user;
            grvUser.DataSource = query.ToList();
            grvUser.DataBind();
        }

        protected void btnUpdate_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            Response.Redirect(string.Format("~/Pages/UpdateUser.aspx?Id={0}", id));
        }

        protected void btnDelete_Command(object sender, CommandEventArgs e)
        {
            string id = e.CommandArgument.ToString();
            using (var db = new AirlineTicketBookingDBContext())
            {
                var user = new User() { Username = id };
                db.Users.Attach(user);
                db.Users.Remove(user);
                db.SaveChanges();
                Response.Redirect("~/Pages/ListUser.aspx");
            }
        }
    }
}