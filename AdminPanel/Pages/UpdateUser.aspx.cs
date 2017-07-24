using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AdminPanel.Pages
{
    public partial class UpdateUser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["Id"] == null) Response.Redirect("~/Pages/ListUser.aspx");
                string id = Request.QueryString["Id"];

                using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
                {
                    var user = db.Users.Find(id);
                    txtUsername.Text = user.Username;
                    txtPassword.Text = user.Password;
                    txtWaller.Text = user.Wallet.ToString();
                    ViewState["Id"] = id;

                }
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string id = ViewState["Id"].ToString();
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                var user = db.Users.Find(id);
                if (user != null)
                {
                    user.Username = txtUsername.Text;
                    user.Password = txtPassword.Text;
                    user.Wallet = int.Parse(txtWaller.Text);
                    db.SaveChanges();
                }
                Response.Redirect("~/Pages/ListUser.aspx");
            }
        }
    }
}