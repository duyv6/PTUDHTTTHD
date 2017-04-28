using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(BS.MM.WebApplication.Startup))]
namespace BS.MM.WebApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
