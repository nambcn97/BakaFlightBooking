using System;
using System.Collections.Generic;

namespace BakaFlightBooking.Models
{
    public partial class Location
    {
        public Location()
        {
            this.Airports = new List<Airport>();
        }

        public string City { get; set; }
        public string State_Province { get; set; }
        public string Country { get; set; }
        public virtual ICollection<Airport> Airports { get; set; }
    }
}
