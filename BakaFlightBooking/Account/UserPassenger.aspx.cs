using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BakaFlightBooking.Account
{
    public partial class UserPassenger : System.Web.UI.Page
    {
        private List<int> years = new List<int>();
        private List<int> months = new List<int>();
        private List<int> days = new List<int>();





        protected void Page_Load(object sender, EventArgs e)
        {
            drpYear.DataSource = GetYears();
            drpYear.DataBind();

            drpMonth.DataSource = GetMonths();
            drpMonth.DataBind();

            drpDay.DataSource = GetDays();
            drpDay.DataBind();

        }
        public List<int> GetYears()
        {
            for (int i = DateTime.Now.Year; i > DateTime.Now.Year-50; i--)
            {
                years.Add(i);
            }
            return years;
        }
        public List<int> GetMonths()
        {
            for (int i = 1; i < 13; i++)
            {
                months.Add(i);
            }
            return months;
        }
        public List<int> GetDays()
        {
            for (int i = 1; i < 32; i++)
            {
                days.Add(i);
            }
            return days;
        }

        protected void btnContinue_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserChoosingSeat.aspx");
        }
    }
}