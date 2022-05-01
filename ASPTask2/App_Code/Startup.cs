using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ASPTask2.Startup))]
namespace ASPTask2
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
