using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DbLibrary.Models.Mapping
{
    public class PaymentMap : EntityTypeConfiguration<Payment>
    {
        public PaymentMap()
        {
            // Primary Key
            this.HasKey(t => t.Payment_ID);

            // Properties
            this.Property(t => t.Username)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Payment");
            this.Property(t => t.Payment_ID).HasColumnName("Payment_ID");
            this.Property(t => t.Booking_ID).HasColumnName("Booking_ID");
            this.Property(t => t.Payment_Amount).HasColumnName("Payment_Amount");
            this.Property(t => t.Payment_Date).HasColumnName("Payment_Date");
            this.Property(t => t.Username).HasColumnName("Username");

            // Relationships
            this.HasOptional(t => t.Booking)
                .WithMany(t => t.Payments)
                .HasForeignKey(d => d.Booking_ID);
            this.HasOptional(t => t.User)
                .WithMany(t => t.Payments)
                .HasForeignKey(d => d.Username);

        }
    }
}
