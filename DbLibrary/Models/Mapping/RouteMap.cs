using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace DbLibrary.Models.Mapping
{
    public class RouteMap : EntityTypeConfiguration<Route>
    {
        public RouteMap()
        {
            // Primary Key
            this.HasKey(t => t.Route_ID);

            // Properties
            // Table & Column Mappings
            this.ToTable("Route");
            this.Property(t => t.Route_ID).HasColumnName("Route_ID");
            this.Property(t => t.Origin_Airport).HasColumnName("Origin_Airport");
            this.Property(t => t.Destination_Airport).HasColumnName("Destination_Airport");
            this.Property(t => t.Distance).HasColumnName("Distance");

            // Relationships
            this.HasOptional(t => t.Airport)
                .WithMany(t => t.Routes)
                .HasForeignKey(d => d.Destination_Airport);
            this.HasOptional(t => t.Airport1)
                .WithMany(t => t.Routes1)
                .HasForeignKey(d => d.Origin_Airport);

        }
    }
}
