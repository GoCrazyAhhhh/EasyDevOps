var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

// Serve static files from wwwroot
app.UseStaticFiles();

app.MapGet("/", () =>
{
    return Results.Content(
        "<html><body><p>EasyDevOps</p> <img src=\"/ITM.jpg\" alt=\"ITM\"></body></html>",
        "text/html"
    );
});

app.Run();
