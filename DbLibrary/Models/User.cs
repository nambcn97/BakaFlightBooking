using System;
using System.Collections.Generic;

namespace DbLibrary.Models
{
    public partial class User
    {
        public User()
        {
            this.Payments = new List<Payment>();
        }

        public string Username { get; set; }
        public string Password { get; set; }
        public Nullable<double> Wallet { get; set; }
        public virtual ICollection<Payment> Payments { get; set; }
    }
}
