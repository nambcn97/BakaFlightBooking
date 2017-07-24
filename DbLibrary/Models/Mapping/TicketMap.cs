using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DbLibrary.Models.Mapping
{
    public class TicketMap : EntityTypeConfiguration<Ticket>
    {
        public TicketMap()
        {
            // Primary Key
            this.HasKey(t => t.Ticket_ID);

            // Properties
            // Table & Column Mappings
            this.ToTable("Ticket");
            this.Property(t => t.Ticket_ID).HasColumnName("Ticket_ID");
            this.Property(t => t.Flight_No).HasColumnName("Flight_No");
            this.Property(t => t.Seat_No).HasColumnName("Seat_No");
            this.Property(t => t.Price).HasColumnName("Price");
            this.Property(t => t.Airplane_ID).HasColumnName("Airplane_ID");

            // Relationships
            this.HasOptional(t => t.AirplaneSeat)
                .WithMany(t => t.Tickets)
                .HasForeignKey(d => new { d.Airplane_ID, d.Seat_No });
            this.HasOptional(t => t.Flight)
                .WithMany(t => t.Tickets)
                .HasForeignKey(d => d.Flight_No);

        }
    }
}
