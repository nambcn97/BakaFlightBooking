using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;
using BakaFlightBooking.Models;

namespace BakaFlightBooking.DAO
{
    public class DbInitializer : CreateDatabaseIfNotExists<AirlineTicketBookingDBContext>
    {
        protected override void Seed(AirlineTicketBookingDBContext context)
        {
            context.Users.Add(new User() { PassengerID = null, Username = "admin", Password = "admin", Type = "admin" });
            context.SaveChanges();

            context.Locations.Add(new Location() { City = "HN", State_Province = "Ha Noi", Country = "Viet Nam" });
            context.Locations.Add(new Location() { City = "HCM", State_Province = "Ho Chi Minh", Country = "Viet Nam" });
            context.Locations.Add(new Location() { City = "DN", State_Province = "Da Nang", Country = "Viet Nam" });
            context.SaveChanges();

            context.Airports.Add(new Airport() { Airport_ID = 1, Airport_Name = "San bay quoc te Noi Bai", Location_City = "HN" });
            context.Airports.Add(new Airport() { Airport_ID = 2, Airport_Name = "San bay quoc te Tan Son Nhat", Location_City = "HCM" });
            context.Airports.Add(new Airport() { Airport_ID = 3, Airport_Name = "San bay quoc te Da Nang", Location_City = "DN" });
            context.SaveChanges();

            context.Producers.Add(new Producer() { Producer_ID = "vn_airline", Producer_Name = "Viet Nam Airline", Description = "Hang hang khong Viet Nam Airline" });
            context.Producers.Add(new Producer() { Producer_ID = "jetstar", Producer_Name = "Jetstar Airways", Description = "Jetstar Airways Pty Ltd, trading as Jetstar, is an Australian low-cost airline headquartered in Melbourne" });
            context.Producers.Add(new Producer() { Producer_ID = "vietjet", Producer_Name = "Vietjet Air", Description = "Cong ty co phan hang khong VietJet" });
            context.SaveChanges();

            context.TravelClasses.Add(new TravelClass() { Travel_Class_ID = 1, Name = "First Class" });
            context.TravelClasses.Add(new TravelClass() { Travel_Class_ID = 2, Name = "Business Class" });
            context.TravelClasses.Add(new TravelClass() { Travel_Class_ID = 3, Name = "Premium Class" });
            context.TravelClasses.Add(new TravelClass() { Travel_Class_ID = 4, Name = "Economy Class" });
            context.SaveChanges();
            //base.Seed(context);
        }
    }
}