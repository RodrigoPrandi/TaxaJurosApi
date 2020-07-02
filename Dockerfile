FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /source
EXPOSE 80
EXPOSE 443

COPY *.sln .
COPY src/. ./src/
RUN dotnet restore

RUN dotnet publish -c release -o /app --no-restore

FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build /app ./
ENTRYPOINT ["dotnet", "TaxaJuros.WebApi.dll"]