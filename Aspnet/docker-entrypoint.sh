#!/bin/sh

OS=$(cat /etc/*-release | egrep "PRETTY_NAME" | cut -d = -f 2 | tr -d '"')

echo "- System Operation: $OS"
echo "- Run application: $APP_NAME"
echo "- EnvironmentName: $ASPNETCORE_ENVIRONMENT"
echo ""
dotnet $APP_NAME