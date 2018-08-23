FROM microsoft/dotnet:2.1-sdk

WORKDIR /app

COPY CelsiusFahrenheit.csproj .
RUN dotnet restore CelsiusFahrenheit.csproj

COPY . .

RUN dotnet publish CelsiusFahrenheit.csproj -c Release -o /app

EXPOSE 3000
CMD [ "dotnet", "DegreeConverter.dll" ]