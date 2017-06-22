using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BakaFlightBooking.Startup))]
namespace BakaFlightBooking
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
