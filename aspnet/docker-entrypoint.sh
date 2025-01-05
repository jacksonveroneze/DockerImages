#!/bin/sh

OS=$(cat /etc/*-release | egrep "PRETTY_NAME" | cut -d = -f 2 | tr -d '"')

if [ -z "$ASSEMBLY_NAME" ]; then
  ASSEMBLY_NAME=$(find . -type f -name "*deps.json" | xargs)
  ASSEMBLY_NAME=$(echo "$ASSEMBLY_NAME" | xargs | sed -e "s#\./##g; s#\.deps\.json#.dll#g")
fi

echo "- SYSTEM_OPERATION: $OS"
echo "- ASPNETCORE_ENVIRONMENT: $ASPNETCORE_ENVIRONMENT"
echo "- ASPNETCORE_HTTP_PORTS: $ASPNETCORE_HTTP_PORTS"
echo ""
echo "- Run application: $ASSEMBLY_NAME"
echo ""
dotnet $ASSEMBLY_NAME