var builder = WebApplication.CreateBuilder(args);
var app = builder.Build();

app.MapGet("/", () => "EasyDevOps");

app.Run();
