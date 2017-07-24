using System;
using System.Collections.Generic;

namespace DbLibrary.Models
{
    public partial class User
    {
        public Nullable<int> PassengerID { get; set; }
        public string Username { get; set; }
        public string Password { get; set; }
        public virtual Passenger Passenger { get; set; }
    }
}
