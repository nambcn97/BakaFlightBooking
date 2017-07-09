using System.ComponentModel.DataAnnotations;
using System.Data.Entity.ModelConfiguration;

namespace DbLibrary.Models.Mapping
{
    public class AdminMap : EntityTypeConfiguration<Admin>
    {
        public AdminMap()
        {
            // Primary Key
            this.HasKey(t => t.username);

            // Properties
            this.Property(t => t.username)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.password)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Admin");
            this.Property(t => t.username).HasColumnName("username");
            this.Property(t => t.password).HasColumnName("password");
        }
    }
}
