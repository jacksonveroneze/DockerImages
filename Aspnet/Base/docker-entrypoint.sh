#!/bin/sh

OS=$(cat /etc/*-release | egrep "PRETTY_NAME" | cut -d = -f 2 | tr -d '"')

echo "- SystemOperation: $OS"
echo "- EnvironmentName: $ASPNETCORE_ENVIRONMENT"
echo "- AspNetCoreUrls: $ASPNETCORE_URLS"
echo "- ApplicationName: $APP_NAME"
echo ""
echo "- Start application"
dotnet $APP_NAME