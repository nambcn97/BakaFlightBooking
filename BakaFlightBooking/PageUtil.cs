﻿using DbLibrary.Models;
using DbLibrary;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace BakaFlightBooking
{
    public class PageUtil
    {
        public static void SendError(HttpResponse response, int statusCode, string description)
        {
            response.StatusCode = statusCode;
            response.StatusDescription = description;
            response.End();
        }

        public static User GetCurrentUser(String userName)
        {
            using (AirlineTicketBookingDBContext db = new AirlineTicketBookingDBContext())
            {
                return db.Users.Find(userName);
            }
        }

        public static Role GetCurrentUserRole(String userName)
        {
            return Role.Agent;
        }

        public static string GetCurrentUserFullName(String userName)
        {
            var currentUser = GetCurrentUser(userName);
            return (currentUser == null) ? "(null)" : currentUser.Username;
        }
    }

    public enum Role
    {
        Admin,
        Agent,
        None
    }
}