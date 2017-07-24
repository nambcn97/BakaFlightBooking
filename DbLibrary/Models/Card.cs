using System;
using System.Collections.Generic;

namespace DbLibrary.Models
{
    public partial class Card
    {
        public int ID { get; set; }
        public string Code { get; set; }
        public Nullable<int> Value { get; set; }
        public Nullable<bool> Status { get; set; }
    }
}
