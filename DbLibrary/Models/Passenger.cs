using System;
using System.Collections.Generic;

namespace DbLibrary.Models
{
    public partial class Passenger
    {
        public Passenger()
        {
            this.Bookings = new List<Booking>();
        }

        public int PassengerID { get; set; }
        public string FullName { get; set; }
        public Nullable<int> Age { get; set; }
        public Nullable<bool> Gender { get; set; }
        public Nullable<int> Tel { get; set; }
        public string Email { get; set; }
        public string Street { get; set; }
        public string Location_City { get; set; }
        public virtual ICollection<Booking> Bookings { get; set; }
    }
}
