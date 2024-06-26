﻿using System.IO;
using System.Reflection;
using System.Threading;
using Autofac.Extensions.DependencyInjection;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;
using Microsoft.Extensions.Logging;
using Resgrid.Config;

namespace Resgrid.Web.ServicesCore
{
	public class Program
	{
		public static void Main(string[] args)
		{
			ThreadPool.SetMinThreads(200, 200);
			CreateHostBuilder(args).Build().Run();
		}

		public static IHostBuilder CreateHostBuilder(string[] args) =>
			Host.CreateDefaultBuilder(args)
				.UseServiceProviderFactory(new AutofacServiceProviderFactory())
				.UseContentRoot(Directory.GetCurrentDirectory())
				.ConfigureLogging(logging =>
				{
					logging.ClearProviders();
					logging.AddConsole();
				})
				//.UseIISIntegration()
				.ConfigureWebHostDefaults(webBuilder =>
				{
					webBuilder.UseStartup<Startup>();

					if (!string.IsNullOrWhiteSpace(Config.ExternalErrorConfig.ExternalErrorServiceUrlForApi))
					{
						webBuilder.UseSentry(options =>
						{
							//options.MinimumBreadcrumbLevel = LogEventLevel.Debug;
							//options.MinimumEventLevel = LogEventLevel.Error;
							options.Dsn = Config.ExternalErrorConfig.ExternalErrorServiceUrlForApi;
							options.AttachStacktrace = true;
							options.SendDefaultPii = true;
							options.TracesSampleRate = ExternalErrorConfig.SentryPerfSampleRate;
							options.Environment = ExternalErrorConfig.Environment;
							options.Release = Assembly.GetEntryAssembly().GetName().Version.ToString();

							options.TracesSampler = samplingContext =>
							{
								if (samplingContext != null && samplingContext.CustomSamplingContext != null)
								{
									if (samplingContext.CustomSamplingContext.ContainsKey("__HttpPath") &&
									    (samplingContext.CustomSamplingContext["__HttpPath"]?.ToString().ToLower() ==
									     "/health/getcurrent" ||
									     samplingContext.CustomSamplingContext["__HttpPath"]?.ToString().ToLower() ==
									     "/api/v3/health/getcurrent" ||
									     samplingContext.CustomSamplingContext["__HttpPath"]?.ToString().ToLower() ==
									     "/api/v4/health/getcurrent"
									    ))
									{
										return 0;
									}
								}

								return ExternalErrorConfig.SentryPerfSampleRate;
							};
						});
					}
				});
	}
}
