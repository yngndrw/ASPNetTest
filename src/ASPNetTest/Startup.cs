using Microsoft.AspNet.Builder;
using Microsoft.Framework.Logging;

namespace ASPNetTest
{
	public class Startup
	{
		public void Configure(IApplicationBuilder app, ILoggerFactory loggerFactory)
		{
			loggerFactory.AddConsole();
			app.UseStaticFiles();
			app.UseWelcomePage();
		}
	}
}
