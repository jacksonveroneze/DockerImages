#!/bin/sh -eu

if [ -z "$ASSEMBLY_NAME" ]; then
  ASSEMBLY_NAME=$(find . -maxdepth 1 -type f -name "*deps.json" | head -n1 | sed -e "s#\.deps\.json#.dll#g" || true)
fi

if [ -z "$ASSEMBLY_NAME" ]; then
  echo "Nenhum assembly encontrado (.dll). Defina ASSEMBLY_NAME ou verifique build."
  exit 1
fi

OS=$(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')

echo "-------------------------------------------"
echo "Starting .NET Application"
echo ""
echo "- SYSTEM_OPERATION: $OS"
echo "- LANG: $LANG"
echo "- DOTNET_ENVIRONMENT: $DOTNET_ENVIRONMENT"
echo "- USER: $(id -u -n)"
echo "- DATE: $(date -u)"
echo ""
echo "- Run application: $ASSEMBLY_NAME"
echo "-------------------------------------------"
echo ""

exec dotnet "$ASSEMBLY_NAME"