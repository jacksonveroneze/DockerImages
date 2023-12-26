#!/bin/sh

OS=$(cat /etc/*-release | egrep "PRETTY_NAME" | cut -d = -f 2 | tr -d '"')

APP_NAME=$(find . -type f -name "*deps.json" | xargs)
APP_NAME=$(echo $APP_NAME | xargs | sed -e "s/.\///g;s/.deps.json/\.dll/g")

echo "- SystemOperation: $OS"
echo "- Environment: $ASPNETCORE_ENVIRONMENT"
echo "- AspNetCorePorts: $ASPNETCORE_HTTP_PORTS"
echo ""
echo "- Run application: $APP_NAME"

dotnet  $APP_NAME