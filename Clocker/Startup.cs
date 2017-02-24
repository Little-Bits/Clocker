using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Clocker.Startup))]
namespace Clocker
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
