using System.Text.Json.Serialization;
using BuildingBlock.Presentation.API.Extensions;
using CloudinaryDotNet;
using FluentValidation;
using Shared.Core.Application;
using Shared.Core.Application.Services;
using Shared.Infrastructure.Cloudinary;

namespace Shared.Presentation.API.Extensions;

public static class SharedExtensions
{
    public static IServiceCollection AddSharedExtensions(this IServiceCollection services, IConfiguration configuration)
    {
        services
            .AddControllers()
            .AddJsonOptions(options =>
            {
                options.JsonSerializerOptions.Converters.Add(new JsonStringEnumConverter());
            });

        services
            .RegisterServices<SharedApplicationAssemblyReference>();

        services.AddScoped<ICloudStorageService, CloudinaryCloudStorageService>(sp =>
        {
            var cloudinaryConnectionString = configuration.GetRequiredValue("CloudStorage:ConnectionString");
            var saveLocation = configuration.GetRequiredValue("CloudStorage:Location");

            var fileSystemService = sp.GetRequiredService<IFileSystemService>();

            var cloudinary = new Cloudinary(cloudinaryConnectionString);

            return new CloudinaryCloudStorageService(cloudinary, fileSystemService, saveLocation);
        });

        services
            .AddApplicationCors(configuration)
            .AddHttpContextAccessor()
            .AddCurrentUser()
            .AddCqrs<SharedApplicationAssemblyReference>()
            .AddDefaultOpenApi(configuration)
            .AddValidatorsFromAssembly(typeof(SharedApplicationAssemblyReference).Assembly)
            .AddInMemoryCache(configuration);

        return services;
    }
}