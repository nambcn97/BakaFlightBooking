using DbLibrary.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakaFlightBooking.Pages
{
    public partial class AddFund : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] == null)
            {
                Response.Redirect("~/Default.aspx");
                return;
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            using (var db = new AirlineTicketBookingDBContext())
            {
                var query = from d in db.Cards where d.Code == TextBox1.Text select d;
                User user = db.Users.Find((String)Session["username"]);
                List<Card> cards = query.ToList();
                if (cards.Count == 1 && cards[0].Status == false)
                {
                    lblInfo.ForeColor = System.Drawing.Color.Green;
                    user.Wallet += cards[0].Value;
                    Card card = db.Cards.Find(cards[0].ID);
                    card.Status = true;
                    lblInfo.Text = "Your fund has been added, your balance is : " + user.Wallet;
                }
                else
                {
                    lblInfo.ForeColor = System.Drawing.Color.Red;
                    lblInfo.Text = "Card is not exist or has been used by another user";
                }
                db.SaveChanges();
            }
        }
    }
}